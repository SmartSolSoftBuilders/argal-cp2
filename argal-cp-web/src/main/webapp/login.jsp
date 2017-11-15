<% response.addHeader("X-Frame-Options", "DENY");  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<!-- General meta information -->
	<title>ARGAL-Cirugías Programadas</title>	
	<script src="static/js/v2.0/js/jquery-2.2.0.js"></script>			
	<link type="text/css" rel="stylesheet" href="static/css_login/style.css" media="screen" />	
    <script src="static/bootstrap/js/bootstrap.js" type="text/javascript"></script>
    <link rel="stylesheet" href="static/css_login/bootstrap.min.css"/>
    <link rel="stylesheet" href="static/css_login/font-awesome.min.css"/>		
<script>	
	function sendForm(){
		document.getElementById("j_username").value=document.getElementById("j_username").value.toUpperCase();
		document.getElementById("j_password").value=document.getElementById("j_password").value.toUpperCase();
		document.forms.loginform.submit();
	}	
</script>
	
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Cirugias Programadas</h1>
            <div class="account-wall">
                <img class="profile-img" src="static/img/logoArgal2.png" alt=""/>
                <form class="form-signin" name="loginform" action="j_spring_security_check" method="post">   
                	<p>${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message} </p>
                            
	                <input type="text" class="form-control" placeholder="Email" id="j_username" name="j_username" onkeyup="javascript:this.value=this.value.toUpperCase();" required autofocus/>
	                <input type="password" class="form-control" name="j_password" id="j_password" onkeyup="javascript:this.value=this.value.toUpperCase();" placeholder="Password" required/>
	                <button class="btn btn-lg btn-primary btn-block" type="submit">
	                    Sign in</button>
	                <label class="checkbox pull-left">
	                    <input type="checkbox" value="remember-me"/>
	                    Remember me
	                </label>                
                </form>
            </div>            
        </div>
    </div>
</div>

</body>
</html>