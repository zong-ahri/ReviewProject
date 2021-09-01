<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="b" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Border-Table</title>
    <link rel="shortcut icon" type="image?x-icon" href="/IMAGES/TitleLogo.png">
    <link rel="stylesheet" href="/CSS/style.css">
    <link rel="stylesheet" href="/CSS/border_side_bar.css">
    <link rel="stylesheet" href="/CSS/border_table.css">
</head>
<body>
    
    <jsp:include page="/WEB-INF/view/header/header.jsp"></jsp:include>

    <main id="main">
        <div id="side_bar">
            <div id="categories">
                <button id="title_btn">+</button>
                <form id="title_add_form" action="/borderinsert" method="GET">
                	<input type="hidden" id="title_flag" value="true">
                	<input type="hidden" name="title_submit_flag" value="false">
                    <input type="text" id="title_text" name="border_name">
                    <button type="button" id="title_add">+</button>
                    <button type="button" id="title_close">x</button>
                </form>
                <c:forEach var="n" items="${list}">
                <div class="group">
                    <div class="group_title">
                        <a href="#">${n.border_name}</a>
                                          
                        <button class="title_delete">-</button>
                        <hr>
                    </div>
                    <ul class="sub_nav">
                    	<c:set var="seq"></c:set>
                    	<b:forEach var="m" items="${n.border_dtlList}" >
                        <li>
                            <div class="label_public">
                            	<input type = "hidden" class = "lastseq" name = "border_seq" value = "${m.border_seq }">
                                <a href="#">${m.border_title }</a>
                                <button class="content_delete">-</button>
                            </div> 
                        </li>
                        </b:forEach>
                        <button class="content_btn">+</button>
                        <form class="add_form" action="/borderinsert" method="GET">
                            <input type="hidden" class="content_flag" value="true">
                            <input type="hidden" name="content_submit_flag" value="false">
                            <input type="hidden" name="border_code" value="${n.border_code}">
	                        <input type="hidden" name="border_seq">
                            <input type="text" class="content_text" name="border_title">
                            <button type="submit" class="content_add">+</button>
                            <button type="button" class="content_close">x</button>
                        </form>
                    </ul>
                </div>
                </c:forEach>
            </div>
        </div>
        <div id="container">
            <div class="group_title">
                <a>${border_mst_bean.border_name }</a>
                <hr>
            </div>
            <ul class="sub_nav">
            	<b:forEach var="m" items="${border_mst_bean.border_dtlList}">
                <li>
                   <div class="label_public">
                       <a>${m.border_title }</a>
                   </div> 
                </li>
                </b:forEach>
            </ul>
        </div>
    </main>
    
    <jsp:include page="/WEB-INF/view/footer/footer.jsp"></jsp:include>
	<script src="/JS/border_table.js"></script>
</body>
</html>