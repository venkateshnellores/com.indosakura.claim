 <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">

<head>
<title>WebEncyclop - Login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body style="background-color:#ededed;">
	<div style="background-color:#337ab7;height:50px;"></div>
	<div class="container-fluid">
		<div class="row col-lg-4 col-lg-offset-4" style="margin-top: 80px;background-color:#fff;padding:20px;border:solid 1px #ddd;">
			<!-- <img th:src="@{/images/login.jpg}" class="img-responsive center-block" width="300" height="300" alt="Logo" /> -->
			<form th:action="@{/login}" method="POST" class="form-signin">
				<h3 class="form-signin-heading" th:text="Login"></h3>
				<br /> <input type="text" id="email" name="email" th:placeholder="Email" class="form-control" /> <br /> <input type="password" th:placeholder="Password" id="password" name="password" class="form-control" /> <br />

				<div align="center" th:if="${param.error}">
					<p style="font-size: 20; color: #FF1C19;">Email or Password is invalid.</p>
				</div>
			<!-- 	<button class="btn btn-lg btn-primary" name="Submit" value="Login" type="Submit" th:text="Login" style="margin-right:10px;"></button> -->
				<input type="submit" value="Login" class="btn btn-primary btn-sm">
				<a href="/recover-password">Forgot password?</a>
			</form>
		</div>
	</div>
</body>
</html>






<!--
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ page isELIgnored="false" %> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="${pageContext.request.contextPath }/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery-ui.min.1.12.1.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css"  rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/custom.css"  rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/main.css"  rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/jquery-ui.min.css"  rel="stylesheet">
 

<title>Claim Home</title>
 
 
<script type="text/javascript">
$(document).ready(function(){
	$("#rowcount").multiselect({
		includeSelectAllOption : false,
		enableFiltering : false,
		enableCaseInsensitiveFiltering: false,
		buttonWidth : '100%',
		maxHeight : 300,
		dropRight : true
		});
	
	$("#yearId").multiselect({
		includeSelectAllOption : false,
		enableFiltering : false,
		enableCaseInsensitiveFiltering: false,
		buttonWidth : '100%',
		maxHeight : 300,
		dropRight : true
		});

	$("#monthId").multiselect({
		includeSelectAllOption : false,
		enableFiltering : true,
		enableCaseInsensitiveFiltering: true,
		buttonWidth : '100%',
		maxHeight : 300,
		dropRight : true
		});

});
function timesheet(){
	window.location.href = "${createUrl}";	
}
function timesheetEdit(id,uId){
	window.location.href = "${editUrl}"+ id +"/"+ uId;
}



</script>
</head>

<body>
	<div class="panel panel-default"> 
<h1>Claim Login</h1>
	<div class="panel-body">

   <div class="row">
	<div class="col-lg-3 col-md-3">
	<div class="form-group">
    <label>User Email</label>
    <input type="text" placeholder="Form Date" name="FDate" required>
    </div>
    </div>
    
    <div class="col-lg-3 col-md-3">
	<div class="form-group">
    <label>Password</label>
    <input type="text" placeholder="To Date" name="TDate" required>
    </div>
    </div>
    </div>
   
    <div class="row">
			<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 text-center">
				<input type="submit" value="login akshay" class="btn btn-primary btn-sm">
			</div>
		
		</div>	
</div>
</div>
</body>
</html>
 -->