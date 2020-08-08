    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Token</title>
</head>
<body>
<c:forTokens items="aaa-bbb-ccc" delims="-" var="name">  
   <c:out value="${name}"/><p></p> 

</c:forTokens>
</body>
</html>