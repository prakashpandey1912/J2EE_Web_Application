import speech_recognition as sr 
import os 
import datetime
from pydub import AudioSegment 
from pydub.silence import split_on_silence 
r=sr.Recognizer()
start_time=datetime.datetime(100,1,1,0,0,1)
max_time=datetime.datetime(100,1,1,0,23,36)
block_num=1
def speech_to_text(current_time,block,source):
	block_str=str(block)
	audio=r.record(source)
	try:
		sentence=r.recognize_google(audio)
	except:
		print("Unable to recognize text")
		return current_time
	time_add=len(sentence.split())
	end_time=current_time+datetime.timedelta(0,time_add)
	str_current_time=str(current_time.time())
	str_end_time=str(end_time.time())
	with open("sample.srt","a") as f:
		f.write(block_str)
		f.write("\n")
		f.write(str_current_time)
		f.write("-->")
		f.write(str_end_time)
		f.write("\n")
		f.write(sentence)
		f.write(".")
		f.write("\n")
		f.write("\n")
	return end_time

path=input("Enter the audio file path:")
song=AudioSegment.from_wav(path)
print('Creating Chunks..........')
chunks=split_on_silence(song,min_silence_len=1000,silence_thresh = -40,keep_silence=200)
try: 
	os.mkdir('audio_chunks') 
except(FileExistsError): 
	pass
os.chdir('audio_chunks') 
i = 0
print('No. Of Chunks Created:',len(chunks)) 
for chunk in chunks: 
	chunk_silent = AudioSegment.silent(duration = 10) 
	audio_chunk = chunk_silent + chunk + chunk_silent 
	print("saving chunk{0}.wav".format(i)) 
	audio_chunk.export("./chunk{0}.wav".format(i), bitrate ='192k', format ="wav") 
	filename = 'chunk'+str(i)+'.wav'
	print("Processing chunk "+str(i)) 
	file = filename 
	with sr.WavFile(file) as source: 
		start_time=speech_to_text(start_time,block_num,source)
		block_num+=1
	i += 1
os.chdir('..') 