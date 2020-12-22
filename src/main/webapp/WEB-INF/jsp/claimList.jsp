<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ page isELIgnored="false" %>
<%@page import="com.indosakura.claim.URLConstants"%>
<spring:url value="<%= URLConstants.CLAIM_CREATE %>" var="createUrl" />


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Claim Home</title>
 
 
<script type="text/javascript">
$(document).ready(function() {	
//alert("akki");
});


function createClaim(){
	//alert("akshay");
	window.location.href = "${createUrl}";	
}
function timesheetEdit(id,uId){
	window.location.href = "${editClaim}"+ id +"/"+ uId;
}



</script>
</head>

<body>
<div class="panel panel-default"> 
<h1>Claim List</h1>
<div class="panel-body">
<div class="row">
	<div class="col-lg-3 col-md-3">
	<div class="form-group">
    <label>First Name</label>
    <input type="text" placeholder="Enter FirstName" name="FirstName" required>
    </div>
    </div>
    
    <div class="col-lg-3 col-md-3">
	<div class="form-group">
    <label>Middle Name</label>
    <input type="text" placeholder="Enter MiddleName" name="MiddleName" required>
    </div>
    </div>
    
    <div class="col-lg-3 col-md-3">
	<div class="form-group">
    <label>Last Name</label>
    <input type="text" placeholder="Enter LastName" name="LastName" required>
    </div>
    </div>
    
    <div class="col-lg-3 col-md-3">
	<div class="form-group">
    <label>Form Status</label>
    <input type="text" placeholder="Enter Status" name="FormStatus" required>
    </div>
    </div>
   </div> 
   
   <div class="row">
	<div class="col-lg-3 col-md-3">
	<div class="form-group">
    <label>Form Date</label>
    <input type="text" placeholder="Form Date" name="FDate" required>
    </div>
    </div>
    
    <div class="col-lg-3 col-md-3">
	<div class="form-group">
    <label>To Date</label>
    <input type="text" placeholder="To Date" name="TDate" required>
    </div>
    </div>
       
    <div class="row">
			<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 text-center">
				<input type="submit" value="Search" class="btn btn-primary btn-sm">
				<input type="submit" value="Reset"  class="btn btn-pink btn-sm">
				<input type="submit" value="Cancel" class="btn btn-danger btn-sm">
				<button type="button" onclick="return createClaim();" class="btn btn-secondary btn-sm">Create</button>
				
			</div>
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

 <!--   <div class="form-container">
 	<h1>Claim List</h1>
 	</div>   -->
<form:form  class="form-horizontal" >
<table id="t01" border="2" width="70%" cellpadding="2">
<tr><th>Claim ID</th>
<th>Employee Name</th>
<th>Claim Date</th>
<th>Claim status</th>
<th>Claim Amount</th>
<th>Remarks</th>
</tr>  
   <c:forEach var="element" items="${list}"> 
   <tr>  
   <td>${element.claimId}</td>  
   <td>${element.employeeName}</td>  
   <td>${element.creationDate}</td>  
   <td>${element.claimStatus}</td>  
   <td>${element.amount}</td>  
   <td>${element.remark}</td>  
   </tr>  
   </c:forEach> 
   </table>  
   <br/>
 </form:form>
</div>
</body>
</html>
