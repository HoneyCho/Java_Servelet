<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="income" scope="session" value="${4000*4 }"/>
<p> Your income is <c:out value="${income }"/></p>
<c:choose>
<c:when test="${income<=1000}">
Income is  not good.
</c:when>
<c:when test="${income>5000}">
Income is good.
</c:when>
<c:otherwise>
Income is intermined.
</c:otherwise>
</c:choose>
</body>
</html>