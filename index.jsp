<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>SB Admin 2 - Dashboard</title>
  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="vendor/font/css.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
<style>
#loader
{
display:none;
}
#loader1
{
display:none;
}
</style>
</head>

<body id="page-top">
  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.jsp">
       <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
	 <div class="sidebar-brand-text mx-3">PRAKASH</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

<!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Services</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">
      <!-- Heading -->
      <div class="sidebar-heading">
        Tasks
      </div>

<!-- Nav Item - VIDEO Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>Video</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">video Components:</h6>
           <a class="collapse-item" href="#" data-toggle="modal" data-target="#subtitleModal">SUBTITLE</a>
            <a class="collapse-item" href="#" data-toggle="modal" data-target="#WaterMarkModal">water Mark</a>
            <a class="collapse-item" href="#" data-toggle="modal" data-target="#transcodingModal">Transcoding</a>  	
          </div>
        </div>
      </li>
<!-- Nav Item - PDF Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>PDF</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Utilities:</h6>
            <a class="collapse-item" href="#" data-toggle="modal" data-target="#HTMLtoPDFModal">HTML TO PDF</a>  	
          </div>
        </div>
      </li>
<!-- Nav Item - MySQL Menu -->
       <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>MySQL</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Login Screens:</h6>
            <a class="collapse-item" href="#" data-toggle="modal" data-target="#ExporttoExcelModal">Export to Excel</a>  	

          </div>
        </div>
      </li>


<!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
<!-- End of Sidebar -->

<!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

<!-- Main Content -->
      <div id="content">

<!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

<!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

<!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>

<!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
<!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

<!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Prakash Pandey</span>
                <img class="img-profile rounded-circle" src="img\PhotoPassport.jpg">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Settings
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  Activity Log
                </a>
               <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

<!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>


<!-- subtitle Modal-->
	<div class="modal fade" id="subtitleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Subtitling</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">x</span>
          </button>
        </div>
        <div class="modal-body">Select Video : ( lessthan 20-30 min )<input type="file" name="file" multiple="multiple"/><br>
	<input type="checkbox" name="srtFile" >srtFile<br>
	<input type="checkbox" name="embFile" >embeddFile
	<br><br>
	</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <form action='adding' class='subtitlingForm'><button class="btn btn-primary" type='submit'>Upload</button></form>
        </div>
      </div>
    </div>
  </div>


<!-- WaterMark Modal-->
	<div class="modal fade" id="WaterMarkModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">WaterMark</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">x</span>
          </button>
        </div>
        <div class="modal-body">Select image :<input type="file" name="file"/>
	<br>
	Opacity (in %) :<input type="number" name="opacity">
	<br>
	x coordinate(.cm) :<input type="number" name="xCoordinate">
	<br>
	y coordinate(.cm) :<input type="number" name="yCoordinate">
	<br>

	</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <form action='WaterMarking' class='WaterMarkingForm'><button class="btn btn-primary" type='submit'>Upload</button></form>
        </div>
      </div>
    </div>
  </div>


<!-- Transcoding Modal-->
	<div class="modal fade" id="transcodingModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Transcoding</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">x</span>
          </button>
        </div>
        <div class="modal-body">Select Video  :<input type="file" name="file" multiple="multiple"/><br>
	<input type="checkbox" name="1080p" >1080p<br>
	<input type="checkbox" name="720p" >720p<br>
	<input type="checkbox" name="480p" >480p<br>
	<input type="checkbox" name="240p" >240p<br>
	<input type="checkbox" name="140p" >140p<br>
	<br><br>
	</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <form action='Transcoding' class='TranscodingForm'><button class="btn btn-primary" type='submit'>Upload</button></form>
        </div>
      </div>
    </div>
  </div>



<!--HTMLtoPDFModal Modal-->
	<div class="modal fade" id="HTMLtoPDFModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">HTML page convert to PDF</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">x</span>
          </button>
        </div>
        <div class="modal-body">Write Url :<input type="text" name="htmlUrl" id="htmlUrl"/><br>
	<br><center><div id="loader1" class="spinner-border"></div></center>
	<br>
	<br>
	</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
         <button class="btn btn-primary" type='submit' id='Html'>Upload</button></form>
        </div>
      </div>
    </div>
  </div>



<!--ExporttoExcelModal Modal-->
	<div class="modal fade" id="ExporttoExcelModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Export TO Excel</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">x</span>
          </button>
        </div>
        <div class="modal-body">select file(.sql) :<input type="file" id="SQLfile" name="SQLfile" /><br>
	<br><br><center><div id="loader" class="spinner-border"></div></center>
	<br>
	</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <button class="btn btn-primary" type='button' id="SQL">Upload</button>
        </div>
      </div>
    </div>
  </div>


<!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

<!-- Page level plugins
  <script src="vendor/chart.js/Chart.min.js"></script>
-->
<!-- Page level custom scripts
  <script src="js/demo/chart-area-demo.js"></script>
  <script src="js/demo/chart-pie-demo.js"></script>
-->
<script>
$(document).ready(function () {

	$("#SQL").click(function (){
              console.log("Prakash");
document.getElementById("loader").style.display="block";
var fd = new FormData();
        var files = $('#SQLfile')[0].files[0];
        fd.append('file',files);
	//console.log("hello");
	$.ajax({
		url : "SQLToExcel",
		method:"POST",
		data : fd,
 		contentType: false,
         	processData: false,
		xhrFields:{
		responseType:'blob'	
			},
           	success : function(response) {
		var a = document.createElement('a');
            	var url = window.URL.createObjectURL(response);
            	a.href = url;
            	a.download = 'download.zip';
           	 document.body.append(a);
	            a.click();
        	    a.remove();
            	window.URL.revokeObjectURL(url);
				console.log("done");
				document.getElementById("loader").style.display="none"
				$('#SQLfile').val("");
			}

});
});

$("#Html").click(function (){
              console.log("Pandey"); 
 document.getElementById("loader1").style.display="block";

var y=$("#htmlUrl").val();
console.log(y);
	$.ajax({
		url : "HtmlToPdf",
		method:"Post",
		data:{
			htmlUrl:y
		      },
		xhrFields:{
		responseType:'blob'	
			},
           	success : function(response) {
		var a = document.createElement('a');
            	var url = window.URL.createObjectURL(response);
            	a.href = url;
            	a.download = 'download.zip';
           	 document.body.append(a);
	            a.click();
        	    a.remove();
            	window.URL.revokeObjectURL(url);
				console.log("done");
				document.getElementById("loader1").style.display="none"
				$('#htmlUrl').val("");
			}

});
});





 });
</script>

</body>

</html>
