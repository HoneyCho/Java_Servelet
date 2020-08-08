<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:import var="data" url="http://www.javatpoint.com"/>  
<c:out value="${data}"/>  
</body>
</html>