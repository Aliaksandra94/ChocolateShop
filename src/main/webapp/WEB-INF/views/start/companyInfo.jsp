<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<style>
    .round {
        border-radius: 100px; /* Радиус скругления */
        border: 3px #666; /* Параметры рамки */
        box-shadow: 0 0 7px #666; /* Параметры тени */
        margin: 6px;
    }
</style>
<head>
    <title><spring:message code = "title.companyInfoPage"></title>
    <p align="right"><a title="English" href="?lang=en"><img src="/visual/images/UK.jpg" width="30px" height="30px"
    class="round"></a>
    <a title="Russian" href="?lang=ru"><img src="/visual/images/RU.png" width="30px" height="30px" class="round"></a></p>
    <a title="English" href="/start"><img src="/visual/images/logo.png" width="150px" height="150px" class="round"></a>
</head>
<body>

</body>
</html>
