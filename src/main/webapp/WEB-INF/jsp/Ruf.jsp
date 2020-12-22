<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ page isELIgnored="false" %>


<script src="${pageContext.request.contextPath }/js/bootstrap-multiselect.js"></script>
<script src="${pageContext.request.contextPath }/js/datepicker.js"></script>
<script src="${pageContext.request.contextPath }/js/bootbox.min.js"></script>
<link href="${pageContext.request.contextPath }/css/bootstrap-multiselect.css"  rel="stylesheet">


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Claim Create</title>
 
 
<script type="text/javascript">
$(document).ready(function() {	

	var calendar2 =flatpickr("#attendanceDate", {
		enableTime : false,
		altInput : true,
		maxDate : "today",
		altFormat : "d-M-Y",
	});
	
	$(".attendanceDateId").on("click", function(){	
		calendar2.open();
					});
});

$(document).ready(function(){
	$("#rowcount").multiselect({
		includeSelectAllOption : false,
		enableFiltering : false,
		enableCaseInsensitiveFiltering: false,
		buttonWidth : '100%',
		maxHeight : 300,
		dropRight : true
		});
	
	$("#expenseType").multiselect({
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


<form th:action="@{/login}" method="POST" class="form-signin">

<div class="panel panel-default"> 
<h1>Claim Create</h1>
<div class="panel-body">
<div class="row">


	
    
    <div class="col-lg-3 col-md-3">
    <div class="form-group">
    <label>Date/Attendance</label>
 	<div class="input-group">
	<input type="creationDate" cssClass="form-control" id="attendanceDate" data-input="" />
	<div class="input-group-addon attendanceDateId" data-toggle="" style="padding:0;"> <span style="padding:0 6px" class="glyphicon glyphicon-calendar"></span>
	</div>
	</div>
    </div>
    </div>
    
    
    
    <!-- <div class="col-lg-3 col-md-3">
	<div class="form-group">
    <label>Project</label>
    <input path="project" maxlength="50"  id="project" class="form-control" placeholder="project"/>
    <span style="color:red;"><s:errors path="project" cssClass="error" /></span>
    </div>
    </div>
    
    -->
    
  
       
</div>    
       
    <div class="row">
			<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 text-center">
				<input type="submit" value="Search" class="btn btn-primary btn-sm">
		<!-- 		<input type="submit" value="Reset"  class="btn btn-pink btn-sm">
				<input type="submit" value="Cancel" class="btn btn-danger btn-sm">   -->
			</div>
	</div>	
   
   


<table >
<tr>
<th>Page No : 
<c:forEach var="count" items="${pageCount}"  varStatus="theCount"> 
<a align="right" href="/viewlists/${theCount.count}">${theCount.count}</a>   
</c:forEach>  
</th>
</tr>
</table>


</div>
</div>
</form>

</body>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ page isELIgnored="false" %>


<script src="${pageContext.request.contextPath }/js/bootstrap-multiselect.js"></script>
<script src="${pageContext.request.contextPath }/js/datepicker.js"></script>
<script src="${pageContext.request.contextPath }/js/bootbox.min.js"></script>
<link href="${pageContext.request.contextPath }/css/bootstrap-multiselect.css"  rel="stylesheet">


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Claim Create</title>
 
 
<script type="text/javascript">
$(document).ready(function() {	

	var calendar2 =flatpickr("#attendanceDate", {
		enableTime : false,
		altInput : true,
		maxDate : "today",
		altFormat : "d-M-Y",
	});
	
	$(".attendanceDateId").on("click", function(){	
		calendar2.open();
					});
});

$(document).ready(function(){
	$("#rowcount").multiselect({
		includeSelectAllOption : false,
		enableFiltering : false,
		enableCaseInsensitiveFiltering: false,
		buttonWidth : '100%',
		maxHeight : 300,
		dropRight : true
		});
	
	$("#expenseType").multiselect({
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

<!--<s:form action="${actionUrl}" method="Post" commandName="claimform" id="claimform" >
-->
<form th:action="@{/login}" method="POST" class="form-signin">

<div class="panel panel-default"> 
<h1>Claim Create</h1>
<div class="panel-body">
<div class="row">


	<!-- <div class="col-lg-3 col-md-3">
	<div class="form-group">
    <label>SR.NO</label>
    <s:input path="claimId" maxlength="50"  id="srno" class="form-control" placeholder="srno"/>
    <span style="color:red;"><s:errors path="srno" cssClass="error" /></span>
    </div>
    </div>   -->
    
    
    <div class="col-lg-3 col-md-3">
    <div class="form-group">
    <label>Date/Attendance</label>
 	<div class="input-group">
	<s:input path="creationDate" cssClass="form-control" id="attendanceDate" data-input="" />
	<div class="input-group-addon attendanceDateId" data-toggle="" style="padding:0;"> <span style="padding:0 6px" class="glyphicon glyphicon-calendar"></span>
	</div>
	</div>
    </div>
    </div>
    
    
    
    <div class="col-lg-3 col-md-3">
	<div class="form-group">
    <label>Project</label>
    <s:input path="project" maxlength="50"  id="project" class="form-control" placeholder="project"/>
    <span style="color:red;"><s:errors path="project" cssClass="error" /></span>
    </div>
    </div>
    
    <div class="col-lg-3 col-md-3">
	<div class="form-group">
    <label>Expense Type<sup class="text-danger">*</sup></label>
    <s:select path="expenseType" cssClass="form-control Multiselect" id="expenseType">
    <s:option value="1">Miscellaneous</s:option>
    <s:option value="2">Telephone</s:option>
    <s:option value="3">Traveling</s:option>
    </s:select>
    </div>
    </div>
   </div>  
    
  
   <div class="row">  
    <div class="col-lg-3 col-md-3">
	<div class="form-group">
    <label>Perticulers</label>
    <s:input path="perticulers" maxlength="50"  id="perticulers" class="form-control" placeholder="perticulers"/>
    <span style="color:red;"><s:errors path="perticulers" cssClass="error" /></span> 
    </div>
   </div>
   
	<div class="col-lg-3 col-md-3">
	<div class="form-group">
    <label>Bill Attach</label>
    <s:select path="billattach" cssClass="form-control Multiselect" id="type">
    <s:option value="1">Yes</s:option>
    <s:option value="2">No</s:option>
    </s:select>
    </div>
    </div>
    
    <div class="col-lg-3 col-md-3">
	<div class="form-group">
    <label>Expenses</label>
    <s:input path="Expenses" maxlength="100"  id="Expenses" class="form-control" placeholder="Expenses"/>
    <span style="color:red;"><s:errors path="Expenses" cssClass="error" /></span>
    </div>
    </div>
 
 
 <!-- <div class="col-lg-3 col-md-3">
	<div class="form-group">
    <label>Attachment</label>
    <input type="text" placeholder="To Date" name="TDate" required>
    </div>
    </div>  -->
 
   <div class="col-lg-3 col-md-3">
	<div class="form-group">
    <label>Remarks</label>
    <input type="text" placeholder="To Date" name="TDate" required>
    </div>
    </div>
 
    
</div>    
       
    <div class="row">
			<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 text-center">
				<input type="submit" value="Search" class="btn btn-primary btn-sm">
		<!-- 		<input type="submit" value="Reset"  class="btn btn-pink btn-sm">
				<input type="submit" value="Cancel" class="btn btn-danger btn-sm">   -->
			</div>
	</div>	
   
   


<table >
<tr>
<th>Page No : 
<c:forEach var="count" items="${pageCount}"  varStatus="theCount"> 
<a align="right" href="/viewlists/${theCount.count}">${theCount.count}</a>   
</c:forEach>  
</th>
</tr>
</table>


</div>
</div>
</form>
<!--</s:form> -->
</body>
</html>
