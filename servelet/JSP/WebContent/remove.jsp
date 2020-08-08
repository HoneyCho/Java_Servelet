<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="income" scope="session" value="${4000*4}"/>
<p> Before remove income <c:out value="${income}"/></p>
<c:remove var="income"/>  
<p> After remove income <c:out value="${income}"/></p>
</body>
</html>