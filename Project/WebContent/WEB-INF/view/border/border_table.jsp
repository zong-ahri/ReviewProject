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
    <link rel="stylesheet" href="/CSS/border.css?ver=1">
</head>
<body>
    
    <jsp:include page="/WEB-INF/view//header/header.jsp"></jsp:include>

    <main id="main">
        <div id="side_bar">
            <div id="categories">
                <button id="title_btn">+</button>
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
                        
                        <button class="title_delete" value="${n.border_code }">-</button>
                        <hr>
                    </div>
                    <ul class="sub_nav">
                    	<c:set var="seq"></c:set>
                    	<b:forEach var="m" items="${n.border_dtlList}" >
                        <li>
                            <div class="label_public">
                            	<input type="hidden" name="border_seq" value="${m.border_seq}">
                                <a href="/bordertable?border_code=${m.border_code }&border_seq=${m.border_seq }">${m.border_title }</a>
                                <input type="hidden" class="content_code" value="${m.border_code }"/>
                                <button class="content_delete" value="${m.border_seq }">-</button>
                            </div> 
                        </li>
                        </b:forEach>
                        <button class="content_btn">+</button>
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
            <div id="">
                <h1>Java의 설치</h1>
                <div id="border_info">
                    <div id="page">
                        <div id="total_page">
                            <span class="page_font">${totalcount }</span>
                            total
                        </div>
                        <div id="now_page">
                            <span class="page_font">:: ${page }</span>
                            /
                            <span class="page_font">${totalpage }</span>
                            Page
                        </div>
                        <form>
                            <select class="filter">
                                <option value="filter">Filter</option>
                                <option value="number">Number</option>
                                <option value="update">Update</option>
                                <option value="like">Like</option>
                                <option value="count">Count</option>
                            </select>
                        </form>
                    </div>
                    <form id="search">
                        <select class="filter">
                            <option value="all">All</option>
                            <option value="writer">Name</option>
                            <option value="update">Update</option>
                        </select>
                            <input type="search" class="box">
                            <button type="submit" id="search_box">Search</button>
                    </form>
                </div>
                <button id="writing">writing</button>
                <table>
                    <thead>
                        <tr>
                            <td id="tb_number">number</td>
                            <td id="tb_name">name</td>
                            <td id="tb_update">update</td>
                            <td id="tb_like">like</td>
                            <td id="tb_count">count</td>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="c" items="${content}">
                    	<tr>
	                    	<th>${c.border_index}</th>
	                    	<td href="#">${c.border_name}</td>
	                    	<td>${c.updatedate}</td>
	                    	<td>${c.border_like}</td>
	                    	<td>${c.border_count}</td>
                    	</tr>
                    </c:forEach>
                        
                    </tbody>
                </table>
                <div id="page_wrap">
                    <span>
                        <a href="#" title="StartPage">
                            <img src="/IMAGES/DoubleArrowLeft.png">
                        </a>
                        <a href="#">
                            <img src="/IMAGES/ArrowLeft.png">
                        </a>
                    </span>
                    <span>
                    <c:forEach var="i" begin="${startpage }" end="${endpage }">
	                    <a href="/bordertable?border_code=${bordercode }&border_seq=${borderseq}&border_page=${i }">${i }</a>
                    </c:forEach>
                    </span>
                    <span>
                        <a href="#">
                            <img src="/IMAGES/ArrowRight.png">
                        </a>
                        <a href="#" title="EndPage">
                            <img src="/IMAGES/DoubleArrowRight.png">
                        </a>
                    </span>
                </div>
            </div>
        </div>
    </main>
    
    <jsp:include page="/WEB-INF/view/footer/footer.jsp"></jsp:include>
	<script src="/JS/border_table.js"></script>
</body>
</html>