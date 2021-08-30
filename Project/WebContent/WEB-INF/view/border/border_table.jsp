<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <div class="group_title">
                <a href="#">Java</a>
                <hr>
            </div>
            <ul class="sub_nav">
                <li>
                   <div class="label_public">
                       <a href="#">Java1</a>
                   </div> 
                </li>
                <li>
                    <div class="label_public">
                        <a href="#">Java2</a>
                    </div> 
                 </li>
                 <li>
                    <div class="label_public">
                        <a href="#">Java3</a>
                    </div> 
                 </li>
                 <li>
                    <div class="label_public">
                        <a href="#">Java4</a>
                    </div> 
                 </li>
                 <li>
                    <div class="label_public">
                        <a href="#">Java5</a>
                    </div> 
                 </li>
                 <li>
                     <div class="label_public">
                         <a href="#">Java6</a>
                     </div> 
                  </li>
                  <li>
                     <div class="label_public">
                         <a href="#">Java7</a>
                     </div> 
                  </li>
                  <li>
                     <div class="label_public">
                         <a href="#">Java8</a>
                     </div> 
                  </li>
            </ul>
        </div>
    </main>
    
    <jsp:include page="/WEB-INF/view/footer/footer.jsp"></jsp:include>

</body>
</html>