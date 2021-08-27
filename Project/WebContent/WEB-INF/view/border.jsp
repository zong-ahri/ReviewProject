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
    <link rel="stylesheet" href="/CSS/border_side_bar.css">
    <link rel="stylesheet" href="/CSS/border.css">
</head>
<body>
    
    <jsp:include page="/WEB-INF/view/header.jsp"></jsp:include>

    <main id="main">
        <div id="side_bar">
            <div id="categories">
                <button id="title_btn">+</button>
                <from class="add_from">
                    <input type="text" id="title_text">
                    <button id="title_add">+</button>
                    <button id="title_close">x</button>
                </from>
                <div class="group">
                    <div class="group_title">
                        <a href="#">Java</a>
                        <button class="title_delete">-</button>
                        <hr>
                    </div>
                    <ul class="sub_nav">
                        <li>
                            <div class="label_public">
                                <a href="#">Java1</a>
                                <button class="content_delete">-</button>
                            </div> 
                        </li>
                        <li>
                             <div class="label_public">
                                <a href="#">Java2</a>
                                <button class="content_delete">-</button>
                             </div> 
                        </li>
                        <li>
                            <div class="label_public">
                                <a href="#">Java3</a>
                                <button class="content_delete">-</button>
                            </div> 
                        </li>
                        <li>
                            <div class="label_public">
                                <a href="#">Java4</a>
                                <button class="content_delete">-</button>
                             </div> 
                        </li>
                        <li>
                            <div class="label_public">
                                <a href="#">Java5</a>
                                <button class="content_delete">-</button>
                            </div> 
                        </li>
                        <li>
                            <div class="label_public">
                                <a href="#">Java6</a>
                                <button class="content_delete">-</button>
                             </div> 
                        </li>
                        <li>
                            <div class="label_public">
                                <a href="#">Java7</a>
                                <button class="content_delete">-</button>
                            </div> 
                        </li>
                        <li>
                            <div class="label_public">
                                <a href="#">Java8</a>
                                <button class="content_delete">-</button>
                            </div> 
                        </li>
                        <button class="content_btn">+</button>
                        <div class="add_from">
                            <input type="text" class="content_text">
                            <button class="content_add">+</button>
                            <button class="content_close">x</button>
                        </div>
                    </ul>
                </div>
                <div class="group">
                    <div class="group_title">
                        <a href="#">CSS</a>
                        <button class="title_delete">-</button>
                        <hr>
                    </div>
                    <ul class="sub_nav">
                        <li>
                            <div class="label_public">
                                <a href="#">CSS1</a>
                                <button class="content_delete">-</button>
                            </div> 
                        </li>
                        <li>
                            <div class="label_public">
                                <a href="#">CSS2</a>
                                <button class="content_delete">-</button>
                            </div> 
                        </li>
                        <li>
                            <div class="label_public">
                                <a href="#">CSS3</a>
                                <button class="content_delete">-</button>
                            </div> 
                        </li>
                        <li>
                           <div class="label_public">
                               <a href="#">CSS4</a>
                               <button class="content_delete">-</button>
                           </div> 
                        </li>
                        <li>
                          <div class="label_public">
                              <a href="#">CSS5</a>
                              <button class="content_delete">-</button>
                          </div> 
                       </li>
                       <li>
                           <div class="label_public">
                               <a href="#">CSS6</a>
                               <button class="content_delete">-</button>
                           </div> 
                        </li>
                        <li>
                           <div class="label_public">
                               <a href="#">CSS7</a>
                               <button class="content_delete">-</button>
                           </div> 
                        </li>
                        <li>
                           <div class="label_public">
                               <a href="#">CSS8</a>
                               <button class="content_delete">-</button>
                           </div> 
                        </li>
                        <button class="content_btn">+</button>
                        <div class="add_from">
                            <input type="text" class="content_text">
                            <button class="content_add">+</button>
                            <button class="content_close">x</button>
                        </div>
                    </ul>
                </div>
            </div>
        </div>
        <div id="container">
            <div>
                <h1>Java의 설치</h1>
                <div id="border_contain">
                    <div id="page_info">
                        <div class="box">
                            총 <span>?</span>건 | 현재 페이지 <span>?</span>/<span>?</span>
                        </div>
                        <form>
                            <select class="filter">
                                <option value="filter">필터</option>
                                <option value="number">number</option>
                                <option value="update">update</option>
                                <option value="like">like</option>
                                <option value="count">count</option>
                            </select>
                        </form>
                    </div>
                    <div>
                        <form>
                            <select class="filter">
                                <option value="all">전체</option>
                                <option value="writer">name</option>
                                <option value="update">update</option>
                            </select>
                            <div class="box">
                                <input type="search">
                                <button type="submit">search</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>
    
    <jsp:include page="/WEB-INF/view/footer.jsp"></jsp:include>

</body>
</html>