<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/4/27
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
    <link rel="stylesheet" href="static/css/style.css" type="text/css"/>
    <script src="static/js/ie6-transparency.js"></script>
    <script>DD_belatedPNG.fix('#header img, #featured-section h2, #circles img, #frontpage-sidebar .read-more, .blue-bullets li, #sidebar .sidebar-button, #project-content .read-more, .more-link, #contact-form .submit, .jcarousel-skin-tango .jcarousel-next-horizontal, .jcarousel-skin-tango .jcarousel-prev-horizontal, #commentform .submit');</script>
    <style>body { behavior: url("static/css/ie6-hover-fix.htc"); }</style>
    <title>Precision Medicine Matching System</title>
</head>
<body class="page">
<div id="wrap">
    <div id="header"> <h1>Precision Medicine</br> </br>Matching System</h1>
        <div id="nav">
            <ul class="menu">
                <li><a href="continue.do">Home</a></li>
                <li class="current_page_item"><a href="match.jsp">Matching</a>
                    <ul class="sub-menu">
                        <li><a href="record.do">record</a></li>
                    </ul>
                </li>
                <li><a href="drug.do">Drugs</a></li>
                <li><a href="druglabel.do">Drug labels</a></li>
                <li><a href="dosage.do">Dosing Guideline</a></li>
            </ul>
        </div>
    </div>
    <div class="page-headline">Record</div>
    <div id="main">
        <div id="content">
            <table class="table">
                <tr>
                    <th>#</th>
                    <th>Uploaded By</th>
                    <th>Uploaded At</th>
                    <th>Action</th>
                </tr>
                <c:forEach items="${samples}" var="item" varStatus="loop">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.name}</td>
                        <td>${item.createdAt}</td>
                        <td><a href="match.do?sampleId=${item.id}">matching</a></td>
                    </tr>
                </c:forEach>

            </table>
        </div>
    </div>
</div>
</body>
<div class="cache-images"><img src="static/images/red-button-bg.png" width="0" height="0" alt="" /><img src="static/images/black-button-bg.png" width="0" height="0" alt="" /></div>
<!--end cache-images-->
</html>
