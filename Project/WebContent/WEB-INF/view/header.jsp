<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <header id="header">
        <nav class="box">
            <div id="left_nav">
                <a href="/index"><img src="/IMAGES/TitleLogo.png" id="logo"> Let's review it well.</a>
            </div>
            <div id="right_nav">
                
            <c:choose>
            	<c:when test="${empty userBean }">
                <li>
                    <a href="/login">Login</a>
                </li>
                <li>
                    <a href="/join">Join</a>
                </li>
            	</c:when>
            	<c:otherwise>
                <li>    
                    <span>${userBean.user_name }</span>
                </li>
                <li>
                    <a href="/logout">logout</a>
                </li>
            	</c:otherwise>
            </c:choose>
                <li>
                    <span id="help">Help</span>
                </li>
            </div>
        </nav>
    </header>