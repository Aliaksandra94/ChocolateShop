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

    .sq-btn {
        display: inline-block;
        position: relative;
        min-width: 178px;
        margin: 6px 28px;
        padding: 15px 40px;
        font-weight: 800;
        font-family: sans-serif;
        font-size: 14px;
        text-transform: uppercase;
        letter-spacing: 1px;
        color: #0010ff;
        transition: .15s ease-out;
        box-sizing: border-box;
        text-decoration: none;
    }

    .btn-one {
        color: #ff9585;
    }

    .sq-btn:last-of-type {
        margin: 6px 28px;
    }

    .sq-btn:before {
        content: "";
        position: absolute;
        top: -6px;
        left: 0;
        height: calc(100% + 12px);
        width: 100%;
        border: 2px solid #0010ff;
        box-sizing: border-box;
        transition: .2s ease-in-out;
    }

    .btn-one:before {
        border: 2px solid #ff9585;
    }

    .sq-btn:after {
        content: "";
        position: absolute;
        top: 0;
        left: -8px;
        height: 100%;
        width: calc(100% + 16px);
        border: 1px solid #0010ff;
        box-sizing: border-box;
        transition: .2s ease-in-out;
    }

    .btn-one:after {
        border: 1px solid #ff9585;
    }

    .sq-btn:hover:before {
        top: 0;
        left: -8px;
        height: 100%;
        width: calc(100% + 16px);
    }

    .sq-btn:hover:after {
        top: -6px;
        left: 0;
        height: calc(100% + 12px);
        width: 100%;
    }

    .sale-wrap {
        width: 400px;
        height: 400px;
        padding: 20px;
        margin: 30px auto 0;
        background: #ffffff;
        border-radius: 3px;
        box-shadow: 0 1px 2px rgba(0, 0, 0, 0.07);
        box-sizing: content-box;
    }

    .sale-inner {
        position: relative;
        height: 100%;
        background: repeating-linear-gradient(-45deg, #bc2423, #bc2423 7px, #910707 8px, #910707 13px);
    }

    .sale-text {
        position: absolute;
        left: 0;
        right: 0;
        top: 50%;
        background: #910707;
        text-align: center;
        color: rgba(255, 255, 255, .8);
        transform: translateY(-50%);
    }

    .sale-text p {
        margin: 0;
        padding: 5px;
        font-size: 10px;
        letter-spacing: 3px;
        color: rgba(255, 255, 255, .8);
        font-family: 'Comfortaa', cursive;
        text-transform: uppercase;
        background: #bc2423;
        box-shadow: 0 2px 5px rgba(0, 0, 0, .2), 0 -2px 5px rgba(0, 0, 0, .2);
    }

    .sale-text h3 {
        margin: 0;
        padding: 15px 0 20px;
        font-family: 'Playfair Display', serif;
        line-height: 1;
        font-style: italic;
        font-size: 30px;
        font-weight: normal;
    }

    .sale-info {
        position: relative;
        width: 70px;
        height: 100%;
        margin: 0 auto;
        background: #910707;
        font-family: 'Oswald', sans-serif;
        font-size: 30px;
        text-align: center;
        color: rgba(255, 255, 255, .8);
        border-left: 20px solid #bc2423;
        border-right: 20px solid #bc2423;
        box-shadow: 2px 0 5px rgba(0, 0, 0, .2), -2px 0 5px rgba(0, 0, 0, .2);
        box-sizing: content-box;
    }

    .sale-info-top {
        padding: 26px 0;
    }

    .sale-info-bottom {
        position: absolute;
        bottom: 26px;
        font-size: 20px;
        left: 0;
        right: 0;
    }

    .stock-wrap {
        width: 400px;
        height: 300px;
        padding: 20px;
        margin: 0 auto 0;
        background: #ffffff;
        border-radius: 3px;
        box-shadow: 0 1px 2px rgba(0, 0, 0, 0.07);
        box-sizing: content-box;
    }

    .stock-inner {
        position: relative;
        height: 100%;
        background: #8ed1d7;
        overflow: hidden;
    }

    .left {
        position: absolute;
        width: 300px;
        height: 300px;
        line-height: 300px;
        left: -70px;
        text-align: center;
        font-size: 120px;
        color: rgb(90, 90, 88);
        border-radius: 50%;
        box-shadow: 0 0 0 1px white,
        0 0 0 7px #8ed1d7, 0 0 0 8px white,
        0 0 0 14px #8ed1d7, 0 0 0 15px white,
        0 0 0 21px #8ed1d7, 0 0 0 22px white,
        0 0 0 28px #8ed1d7, 0 0 0 29px white,
        0 0 0 35px #8ed1d7, 0 0 0 36px white,
        0 0 0 42px #8ed1d7, 0 0 0 43px white,
        0 0 0 49px #8ed1d7, 0 0 0 50px white,
        0 0 0 56px #8ed1d7, 0 0 0 57px white,
        0 0 0 63px #8ed1d7, 0 0 0 64px white,
        0 0 0 70px #8ed1d7, 0 0 0 71px white,
        0 0 0 77px #8ed1d7, 0 0 0 78px white,
        0 0 0 85px #8ed1d7, 0 0 0 86px white;
    }

    .right {
        position: absolute;
        right: -150px;
        width: 300px;
        height: 300px;
        border-radius: 50%;
        background: white;
    }

    .right h3 {
        position: absolute;
        height: 50px;
        top: 125px;
        margin: 0;
        padding-left: 30px;
        font-family: 'Gravitas One', cursive;
        color: #dda601;
        font-weight: normal;
    }

    .right h3 > span {
        font-size: 58px;
        line-height: 1;
    }

    .right .text {
        display: inline-block;
        width: 50px;
        height: 50px;
        line-height: 50px;
        border-radius: 50%;
        background: #d6a31e;
        color: #020521;
        text-align: center;
        font-family: Arial;
        font-size: 10px;
        vertical-align: top;
    }

    sup {
        font-size: 20px;
        vertical-align: top;
    }

    .stock-text {
        padding: 20px;
        background: #8ed1d7;
        color: rgba(255, 255, 255, .8);
    }
</style>
<head>
    <title><spring:message code="title.startPage"/></title>
    <p align="right"><a title="English" href="?lang=en"><img src="/visual/UK.jpg" width="30px" height="30px"
                                                             class="round"></a>
        <a title="Russian" href="?lang=ru"><img src="/visual/RU.png" width="30px" height="30px" class="round"></a></p>
    <a title="English" href="/start"><img src="/visual/images/logo.png" width="150px" height="150px" class="round"></a>
</head>
<body>+
<p align="center">
    <a title="Information about the company" class="sq-btn btn-one" href="companyInfo.jsp">
        <spring:message code="infoAboutCompany.startPage"/></a>
    <a class="sq-btn" title="Go to the catalog" href="../goods/catalog.jsp">
        <spring:message code="catalog.startPage"/> </a>
    <a class="sq-btn btn-one" title="Contacts of the company" href="/contacts">
        <spring:message code="contacts.startPage"/> </a>
    <a class="sq-btn" title="Login" href="/login">
        <spring:message code="authorization.startPage"/> </a>
</p>
<div class="stock-wrap">
    <div class="stock-inner">
        <div class="left">
            <p><img align="center" src="/visual/gift.png"></p>
        </div>
        <div class="right">
            <h3><span>1</span><span class="text"><spring:message code="sale.startPage"/> </span><sup>%</sup>
            </h3>
        </div>
    </div>
    <p class="stock-text">*<spring:message code="sale.text.startPage"/></p>
    <p class="stock-text">**<spring:message code="sale.exception.startPage"/></p>
</div>
<br><br>
<div class="sale-wrap">
    <div class="sale-inner">
        <div class="sale-info">
            <div class="sale-info-top"><spring:message code="sale.Discount.startPage"/></div>
            <div class="sale-info-bottom"><spring:message code="sale.Company.startPage"/></div>
        </div>
        <div class="sale-text">
            <p><spring:message code="sale.Period.startPage"/></p>
            <h3><spring:message code="sale.Product.startPage"/></h3>
            <p><spring:message code="sale.Client.startPage"/></p>
        </div>
    </div>
</div>
</body>
</html>