<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ page isELIgnored="false" %>
<%@page import="com.indosakura.claim.URLConstants"%>
<spring:url value="<%= URLConstants.CLAIM_SAVE %>" var="saveUrl" />
<script src="${pageContext.request.contextPath }/js/bootstrap-multiselect.js"></script>
<script src="${pageContext.request.contextPath }/js/bootbox.min.js"></script>
<script src="${pageContext.request.contextPath }/js/datepicker.js"></script>

<script src=https://code.jquery.com/jquery-1.12.4.js></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link href="${pageContext.request.contextPath }/css/bootstrap-multiselect.css"  rel="stylesheet">


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Claim Create</title>
 
 <script type="text/javascript">
 $(function() {
	    $("#datepicker").datepicker();
	  });
 
 
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

<s:form action="claimSave" method="Post" enctype="multipart/form-data" modelAttribute="claimform" id="claimform" >

<div class="panel panel-default"> 
<h1>Claim Create</h1>
<div class="panel-body">
<div class="row">

   <div class="col-lg-3 col-md-3">
    <div class="form-group">
    <label>Date/Attendance</label>
 <!-- <input type="text" name="creationDate" id="datepicker">  -->    
 <s:input path="creationDate" cssClass="form-control" id="datepicker" data-input="" />
 </div>
 </div>  
  <!--     <div class="col-lg-3 col-md-3">
    <div class="form-group">
    <label>Date/Attendance</label> 
	<div class="input-group">
	<s:input path="creationDate" cssClass="form-control" id="#datepicker" data-input="" />
	 <div class="input-group-addon" data-toggle="" style="padding:0;"> <span style="padding:0 6px" ></span>
	</div> 
	</div>
    </div>
    </div>
     -->
    
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


    <div class="col-lg-3 col-md-3">
	<div class="form-group">
   <!--   <s:form method="post" action="savefile" enctype="multipart/form-data"> --> 
    <p><label for="image">Choose Image</label></p>  
    <p><input name="file" id="fileToUpload" type="file" /></p>  
  <!--   <p><input type="submit" value="Upload"></p>  --> 
   <!--  </s:form>  -->  
    </div>
    </div> 
     </div>  
    
   <div class="row">  
    <div class="col-lg-3 col-md-3">
	<div class="form-group">
    <label>Particulars</label>
    <s:input path="particulars" maxlength="50"  id="particulars" class="form-control" placeholder="perticulers"/>
    <span style="color:red;"><s:errors path="particulars" cssClass="error" /></span> 
    </div>
   </div>
   
	<div class="col-lg-3 col-md-3">
	<div class="form-group">
    <label>Bill Attach</label>
    <s:select path="billAttach" cssClass="form-control Multiselect" id="type">
    <s:option value="1">Yes</s:option>
    <s:option value="2">No</s:option>
    </s:select>
    </div>
    </div>
    
    <div class="col-lg-3 col-md-3">
	<div class="form-group">
    <label>Expenses</label>
    <s:input path="amount" maxlength="100"  id="Expenses" class="form-control" placeholder="Expenses"/>
    <span style="color:red;"><s:errors path="amount" cssClass="error" /></span>
    </div>
    </div>
 
   <div class="col-lg-3 col-md-3">
	<div class="form-group">
    <label>Remarks</label>
   <s:textarea path="remark" maxlength="5000" id="remark" class="form-control" rows="2" placeholder="${remark}" />
    </div>
    </div>
 
    
</div>    
       
    <div class="row">
			<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 text-center">
				<input type="submit" value="Create" class="btn btn-primary btn-sm">
		<!-- 		<input type="submit" value="Reset"  class="btn btn-pink btn-sm">
				<input type="submit" value="Cancel" class="btn btn-danger btn-sm">   -->
			</div>
	</div>	

</div>
</div>
</s:form>
</body>
</html>
