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
    <title>Coding Review</title>
    <link rel="shortcut icon" type="image?x-icon" href="/IMAGES/TitleLogo.png">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="/CSS/style.css">
    <link rel="stylesheet" href="/CSS/index.css">
</head>
<body>

	<jsp:include page="/WEB-INF/view/header/header.jsp"></jsp:include>
    
    <main id="main">
        <div class="box">
            <nav id="menu_icon">
                <input type="hidden" id="menu_flag" value="false">
                <img src="/IMAGES/MenuIcon.png" id="contain_icon">
            </nav>

            <div id="all_manus">
                <hgroup id="hmanus">
                    <h2>All List</h2>
                    <img src="/IMAGES/Close_x.png" id="close_btn">
                </hgroup>
                <div id="section">
                    <div id="wrapper">
                    <c:forEach var="n" items="${list }">
                		<div class="group">
                            <div class="group_title">
                                <a href="/border_table?border_code=${n.border_code }">${n.border_name }</a>
                                <hr>
                            </div>
                            <ul class="sub_nav">
                            	<b:forEach var="m" items="${n.border_dtlList}">
                            	<li>
                                   <div class="label_public">
                                       <a href="#">${m.border_title }</a>
                                   </div> 
                                </li>
                            	</b:forEach>
                            </ul>
                        </div>
                	</c:forEach>
                    </div>
                </div>
            </div>
            
            <div id="swiper-container__id" class="swiper-container">
                <article id="main_art" class="swiper-wrapper">
                    <c:forEach var="n" items="${list }">
                    <nav class="swiper-slide">
                        <div class="box"><a href="/border_table?border_code=${n.border_code }">${n.border_name }</a></div>
                    </nav>
                    </c:forEach>
                </article>
                
                <div class="swiper-pagination"></div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>
            
        </div>
    </main>
    
    <jsp:include page="/WEB-INF/view/footer/footer.jsp"></jsp:include>

    <script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="../JS/pageSwiper.js"></script>
    <script src="/JS/index.js"></script>
</body>
</html>
  	