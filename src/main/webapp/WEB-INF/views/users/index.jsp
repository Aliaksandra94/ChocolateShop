<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <p align="right"><a title="English" href="?lang=en"><img src="/visual/images/UK.jpg" width="30px" height="30px"
                                                             class="round"></a>
        <a title="Russian" href="?lang=ru"><img src="/visual/images/RU.png" width="30px" height="30px" class="round"></a></p>
    <a title="English" href="/start"><img src="/visual/images/logo.png" width="150px" height="150px" class="round"></a>
    <title><spring:message code="title.loginPage"/></title>
</head>
<body>
<h1><spring:message code="title.loginPage"/></h1>
<h2>${message}</h2>

<form action="/logout" method="post">
    <input value="Logout" type="submit">
</form>

</body>
</html>