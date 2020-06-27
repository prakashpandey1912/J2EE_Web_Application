<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>SB Admin 2 - Register</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="vendor/font/css.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">


<script>
function processRegistrationForm()
{
var registrationForm=$("#registrationForm");
var errors=0;
var firstName=registrationForm.find("#firstName");
if(!firstName.val().trim())
{
firstName.addClass("is-invalid");
errors++;
if(errors<=1) firstName.focus();
}
else
{
firstName.removeClass("is-invalid");
}
var lastName=registrationForm.find("#lastName");
if(!lastName.val().trim())
{
lastName.addClass("is-invalid");
errors++;
if(errors<=1) lastName.focus();
}
else
{
lastName.removeClass("is-invalid");
}

var mailID=registrationForm.find("#mailID");
if(!mailID.val().trim())
{
mailID.addClass("is-invalid");
errors++;
if(errors<=1) mailID.focus();
}
else
{
mailID.removeClass("is-invalid");
}


var inputPassword=registrationForm.find("#inputPassword");
if(!inputPassword.val().trim())
{
inputPassword.addClass("is-invalid");
errors++;
if(errors<=1) inputPassword.focus();
}
else
{
inputPassword.removeClass("is-invalid");
}

var confirmPassword=registrationForm.find("#confirmPassword");
if(!confirmPassword.val().trim())
{
confirmPassword.addClass("is-invalid");
errors++;
if(errors<=1) confirmPassword.focus();
}
else
{
confirmPassword.removeClass("is-invalid");
}
}
</script>

<jsp useBeans id='errorBean' scope='request' class='WEB-INF/classes/com/thinking/machines/beans/ErrorBean'/>
<jsp useBeans id='userBean' scope='request' class='WEB-INF/classes/com/thinking/machines/beans/userBean'/>
<jsp getProperty name="errorBean" property="error"/>


</head>

<body class="bg-gradient-primary">

  <div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
              </div>

              <form id='registrationForm' action='registration.jsp'>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="text" class="form-control form-control-user" id="firstName" name="firstName" placeholder="First Name" required="required" value='${RegisterBean.firstName}'>
                  </div>
                  <div class="col-sm-6">
                    <input type="text" class="form-control form-control-user" id="lastName" name="lastName" placeholder="Last Name" required="required" value='${RegisterBean.lastName}'>
                  </div>
                </div>
                <div class="form-group">
                  <input type="email" class="form-control form-control-user" id="mailID" name="emailId" placeholder="Email Address" required="required" value='${RegisterBean.emailId}'>
		<span style="color:red">${errorBean.error}</span>
                </div>
                <div class="form-group row">                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="password" class="form-control form-control-user" id="inputPassword" name="password" placeholder="Password" required="required">
                  </div>
                  <div class="col-sm-6">
                    <input type="password" class="form-control form-control-user" id="confirmPassword" name="rePassword" placeholder="Repeat Password" required="required">
                  </div>
                </div>
                <button onclick='processRegistrationForm()' class="btn btn-primary btn-user btn-block" type="submit">
                  Register Account
                </button>
              </form>
              <hr>
              <div class="text-center">
                <a class="small" href="forgot-password.html">Forgot Password?</a>
              </div>
              <div class="text-center">
                <a class="small" href="login.jsp">Already have an account? Login!</a>
              </div>
            </div>
          </div>
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

</body>

</html>
