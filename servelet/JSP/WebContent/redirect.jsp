<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:set var="url" value="0" scope="request" />
	<c:if test="{url<1}">
		<c:redirect url="https://classroom.google.com/" />
	</c:if>

	<c:if test="${url>1}">
		<c:redirect url="http://facebook.com" />
	</c:if>
</body>
</html>