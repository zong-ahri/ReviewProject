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
    <title>Border</title>
    <link rel="shortcut icon" type="image?x-icon" href="/IMAGES/TitleLogo.png">
    <link rel="stylesheet" href="/CSS/style.css">
    <link rel="stylesheet" href="/CSS/border_side_bar.css?ver=2">
    <link rel="stylesheet" href="/CSS/border_insert.css">
</head>
<body>
    
    <jsp:include page="/WEB-INF/view/header/header.jsp"></jsp:include>
    <c:choose>
     	<c:when test="${empty userBean }">
     		<c:set var="display" value="none"></c:set>
     	</c:when>
     	<c:otherwise>
     		<c:set var="display" value="inline"></c:set>
     	</c:otherwise>
    </c:choose>

    <main id="main">
        <div id="side_bar">
            <div id="categories">
                <button id="title_btn" style="display : ${display }">+</button>
                <form id="title_add_form" action="/borderinsert" method="GET">
                	<input type="hidden" id="title_flag" value="true">
                	<input type="hidden" id="title_submit_flag" name="title_submit_flag" value="false">
                    <input type="text" id="title_text" name="border_name">
                    <button type="button" id="title_add">+</button>
                    <button type="button" id="title_close">x</button>
                </form>
                <c:forEach var="n" items="${list}">
                <div class="group">
                    <div class="group_title">
                        <a href="/border_content?border_code=${n.border_code }">${n.border_name}</a>
                        <button type="button" class="title_delete" value="${n.border_code }" style="display : ${display }">-</button>
                        <hr>
                    </div>
                    <ul class="sub_nav">
                    	<c:set var="seq"></c:set>
                    	<b:forEach var="m" items="${n.border_dtlList}" >
                        <li>
                            <div class="label_public">
                            	<input type="hidden" name="border_seq" value="${m.border_seq}">
                                <a href="/bordertable">${m.border_title }</a>
                                <input type="hidden" class="content_code" value="${m.border_code }"/>
                                <button type="button" class="content_delete" name="title_btn_flag" value="${m.border_seq }" style="display : ${display }">-</button>
                            </div> 
                        </li>
                        </b:forEach>
                        <button class="content_btn" style="display : ${display }">+</button>
                        <form class="add_form" action="/borderinsert" method="GET">
                            <input type="hidden" class="content_flag" value="true">
                            <input type="hidden" class="content_submit_flag" name="content_submit_flag" value="false">
                            <input type="hidden" name="border_code" value="${n.border_code}">
                            <input type="text" class="content_text" name="border_title">
                            <button type="button" class="content_add">+</button>
                            <button type="button" class="content_close">x</button>
                        </form>
                    </ul>
                </div>
                </c:forEach>
            </div>
        </div>
        <div id="container">
            <form id="borderinsertform" action="borderwriting">

                <h1>${border_title }</h1>
                <input type="hidden" name="user_name" value="${userBean.user_name }">
                <h2>- ${userBean.user_name } -</h2>
                
                <div>
                    <textarea class="content_textarea" name="border_content"></textarea>
                </div>
                
                <div class="border_button">
                
                    <input type="hidden" name="border_seq" value="${border_seq }">
                    <input type="hidden" name="border_code" value="${border_code }">
                    <input type="hidden" id="submitFlag" name="submitFlag" value="false">
                    <button id="insertButton">Write</button> 
                    <button type="reset">Rewrite</button>
                </div>

            </form>
        </div>
    </main>
    
    <jsp:include page="/WEB-INF/view/footer/footer.jsp"></jsp:include>
	<script src="/JS/border_table.js"></script>
	<script src="/JS/borderinsert.js"></script>
</body>
</html>