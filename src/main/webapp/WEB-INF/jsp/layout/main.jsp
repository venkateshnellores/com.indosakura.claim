<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
	<title>Spring Boot with Apache Tiles</title>
<!-- 	<link href="/bootstrap.min.css" rel="stylesheet">
	<script src="/jquery-2.2.1.min.js"></script>
	<script src="/bootstrap.min.js"></script>
	 -->
<script src="${pageContext.request.contextPath }/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery-ui.min.1.12.1.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/js/flatpickr.min.js"></script>
<link href="${pageContext.request.contextPath }/css/flatpickr.min.css"  rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css"  rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/custom.css"  rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/main.css"  rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/jquery-ui.min.css"  rel="stylesheet">
	
</head>
<body>
<div class="container" style="margin: 50px">
	<tiles:insertAttribute name="header" />
	<tiles:insertAttribute name="body" />
	<tiles:insertAttribute name="footer" />
</div>
</body>
</html>