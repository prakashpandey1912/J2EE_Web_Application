import pdfkit 
import sys
z=sys.argv
print("python")
url=z[1];
print("done")
pdfkit.from_url(url,'c:/tomcat9/webapps/myServices/WEB-INF/'+url.split('.')[1]+'.pdf') 