<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="/CSS/border_dtl.css">
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
            <h1>${border_dtlList.border_title }</h1>
            <input type="hidden" name="user_name" value="${userBean.user_name }">
            <h2>- ${updatedate } - </h2>
            <h2>- ${user_name } -</h2>
            <div class="border_button">
                <button id="like"><a href="#">Like???</a></button>
            </div>
            

            <pre class="border_content">${borderDtlModel.border_content }</pre>

            <div class="border_button">
                <button id="list" onclick="location.href='border?page=${page }'">List</button>
            </div>

            <table class="borderDtl_table">
                <tr>
                    <th>Pre</th>
                    <td class="footer_td"><a href="borderdtl?border_code=${preBean.border_code }&page=${page }">${preBean.border_title }</a></td>
                </tr>
                <tr>
                    <th>Next</th>
                    <td class="footer_td"><a href="borderdtl?border_code=${nextBean.border_code }&page=${page }">${nextBean.border_title }</a></td>
                </tr>
            </table>


        </div>
    </main>
    
    <jsp:include page="/WEB-INF/view/footer/footer.jsp"></jsp:include>
	<script src="/JS/border_table.js"></script>
</body>
</html>