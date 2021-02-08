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
* {
    margin: 0;
    box-sizing: border-box;
}
body {
    background: linear-gradient(to top, #77103a, #ba3372, #fd98c6) fixed;
    font-family: 'Montserrat Alternates', sans-serif;
}
.post-wrap {
    max-width: 1120px;
    margin: 0 auto;
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
}
.post-item {
    padding: 15px;
    cursor: pointer;
}
.post-item * {
    transition: .3s linear;
}
.item-content {
    background: #cb4874;
    padding: 40px;
}
.item-icon {
    margin-bottom: 20px;
}
.item-icon:before {
    content: "";
    font-family: FontAwesome;
    color: #701c37;
    font-size: 50px;
    line-height: 1;
}
.item-icon.photo:before {
    content: "\f030";
}
.item-icon.video:before {
    content: "\f03d";
}
.item-icon.gift:before {
    content: "\f06b";
}
.item-icon.group:before {
    content: "\f0c0";
}
.item-icon.tree:before {
    content: "\f1bb";
}
.item-icon.anchor:before {
    content: "\f13d";
}
.post-item:hover .item-icon, .post-item:hover .item-body h3, .post-item:hover .item-body p {
    transform: translateY(-8px);
}
.item-body {
    color: #56122c;
    font-size: 14px;
}
.item-body h3 {
    font-weight: 500;
    margin-bottom: 15px;
    transition-delay: .05s;
}
.item-body p {
    transition-delay: .1s;
}
.item-footer {
    padding-top: 15px;
}
.link {
    text-decoration: none;
    display: inline-block;
    overflow: hidden;
    position: relative;
    padding-right: 30px;
    font-size: 18px;
    text-transform: uppercase;
    font-weight: 600;
    color: #47031f;
}
.link:before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    bottom: 0;
    height: .125rem;
    margin: auto;
    background: #F09EA3;
    transform: scaleX(.2);
    transform-origin: left center;
    z-index: 0;
    transition: .6s cubic-bezier(.6, .01, 0, 1);
}
.link span {
    display: inline-block;
    position: relative;
    transform: translateX(-200%);
    transition: .6s cubic-bezier(.6, .01, 0, 1);
}
.post-item:hover .link span {
    transform: translateX(0%);
}
.post-item:hover .link:before {
    transform-origin: right center;
}
@media (min-width: 768px) {
    .post-item {
        flex-basis: 50%;
        flex-shrink: 0;
    }
}
@media (min-width: 960px) {
    .post-item {
        flex-basis: 33.333333333%;
    }
}
</style>
<head>
    <title><spring:message code="title.contactsPage"/></title>
    <p align="right"><a title="English" href="?lang=en"><img src="/visual/images/UK.jpg" width="30px" height="30px"
                                                             class="round"></a>
        <a title="Russian" href="?lang=ru"><img src="/visual/images/RU.png" width="30px" height="30px" class="round"></a></p>
    <a title="English" href="/start"><img src="/visual/images/logo.png" width="150px" height="150px" class="round"></a>
</head>
<body>
<div class="post-wrap">
    <div class="post-item">
        <div class="item-content">
            <img src="/visual/ceo.png" width="70px" height="70px">
            <div class="item-body">
                <h3><spring:message code="ceo.contactsPage"/></h3>
                <p><spring:message code="ceo.shotInfo.contactsPage"/></p>
            </div>
            <div class="item-footer">
                <a href="#" class="link"><span>+375 17 222 02 22</span></a>
            </div>
        </div>
    </div>

    <div class="post-item">
        <div class="item-content">
            <img src="/visual/deputy.png" width="70px" height="70px">
            <div class="item-body">
                <h3><spring:message code="commercialDeputy.contactsPage"/></h3>
                <p><spring:message code="commercialDeputy.shotInfo.contactsPage"/></p>
            </div>
            <div class="item-footer">
                <a href="#" class="link"><span>+375 17 222 02 20</span></a>
            </div>
        </div>
    </div>

    <div class="post-item">
        <div class="item-content">
            <img src="/visual/deputy.png" width="70px" height="70px">
            <div class="item-body">
                <h3><spring:message code = "developmentDeputy.contactsPage"/></h3>
                <p><spring:message code="developmentDeputy.shotInfo.contactsPage"/></p>
            </div>
            <div class="item-footer">
                <a href="#" class="link"><span>+375 17 222 02 23</span></a>
            </div>
        </div>
    </div>

    <div class="post-item">
        <div class="item-content">
            <img src="/visual/managers.png" width="70px" height="70px">
            <div class="item-body">
                <h3><spring:message code="sales.contactsPage"/></h3>
                <p><spring:message code="sales.shotInfo.contactsPage"/></p>
            </div>
            <div class="item-footer">
                <a href="#" class="link"><span>+375 17 222 02 25</span></a>
            </div>
        </div>
    </div>

    <div class="post-item">
        <div class="item-content">
            <img src="/visual/managers.png" width="70px" height="70px">
            <div class="item-body">
                <h3><spring:message code="purchasing.contactsPage"/></h3>
                <p><spring:message code="purchasing.shotInfo.contactsPage"/></p>
            </div>
            <div class="item-footer">
                <a href="#" class="link"><span>+375 17 222 02 29</span></a>
            </div>
        </div>
    </div>

    <div class="post-item">
        <div class="item-content">
            <img src="/visual/managers.png" width="70px" height="70px">
            <div class="item-body">
                <h3><spring:message code="accounting.contactsPage"/></h3>
                <p><spring:message code="accounting.shotInfo.contactsPage"/></p>
            </div>
            <div class="item-footer">
                <a href="#" class="link"><span>+375 17 222 02 30</span></a>
            </div>
        </div>
    </div>
    <div class="post-item">
        <div class="item-content">
            <img src="/visual/managers.png" width="70px" height="70px">
            <div class="item-body">
                <h3><spring:message code="quality.contactsPage"/></h3>
                <p><spring:message code="quality.shotInfo.contactsPage"/></p>
            </div>
            <div class="item-footer">
                <a href="#" class="link"><span>+375 17 222 02 35</span></a>
            </div>
        </div>
    </div>
    <div class="post-item">
        <div class="item-content">
            <img src="/visual/managers.png" width="70px" height="70px">
            <div class="item-body">
                <h3><spring:message code="humanRes.contactsPage"/></h3>
                <p><spring:message code="humanRes.shotInfo.contactsPage"/></p>
            </div>
            <div class="item-footer">
                <a href="#" class="link"><span>+375 17 222 02 45</span></a>
            </div>
        </div>
    </div>
    <div class="post-item">
        <div class="item-content">
            <img src="/visual/support.png" width="70px" height="70px">
            <div class="item-body">
                <h3><spring:message code="coop.contactsPage"/></h3>
                <p><spring:message code="coop.shotInfo.contactsPage"/></p>
            </div>
            <div class="item-footer">
                <a href="#" class="link"><span>+375 17 222 02 40</span></a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
