<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                        <div class="group">
                            <div class="group_title">
                                <a href="/border">Java</a>
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
                            </ul>
                        </div>
                        <div class="group">
                            <div class="group_title">
                                <a href="#">CSS</a>
                                <hr>
                            </div>
                            <ul class="sub_nav">
                                <li>
                                   <div class="label_public">
                                       <a href="#">CSS1</a>
                                   </div>
                                </li>
                                <li>
                                    <div class="label_public">
                                        <a href="#">CSS2</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="group">
                            <div class="group_title">
                                <a href="#">Java</a>
                                <hr>
                            </div>
                            <ul class="sub_nav">
                                <li>
                                   <div class="label_public">
                                       <a href="#">test1</a>
                                   </div>
                                </li>
                                <li>
                                    <div class="label_public">
                                        <a href="#">test2</a>
                                    </div>
                                 </li>
                            </ul>
                        </div>
                        <div class="group">
                            <div class="group_title">
                                <a href="#">Java</a>
                                <hr>
                            </div>
                            <ul class="sub_nav">
                                <li>
                                   <div class="label_public">
                                       <a href="#">test1</a>
                                   </div>
                                </li>
                                <li>
                                    <div class="label_public">
                                        <a href="#">test2</a>
                                    </div>
                                 </li>
                            </ul>
                        </div>
                        <div class="group">
                            <div class="group_title">
                                <a href="#">Java</a>
                                <hr>
                            </div>
                            <ul class="sub_nav">
                                <li>
                                   <div class="label_public">
                                       <a href="#">test1</a>
                                   </div>
                                </li>
                                <li>
                                    <div class="label_public">
                                        <a href="#">test2</a>
                                    </div>
                                 </li>
                            </ul>
                        </div>
                        <div class="group">
                            <div class="group_title">
                                <a href="#">CSS</a>
                                <hr>
                            </div>
                            <ul class="sub_nav">
                                <li>
                                   <div class="label_public">
                                       <a href="#">test1</a>
                                   </div>
                                </li>
                                <li>
                                    <div class="label_public">
                                        <a href="#">test2</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="group">
                            <div class="group_title">
                                <a href="#">Java</a>
                                <hr>
                            </div>
                            <ul class="sub_nav">
                                <li>
                                   <div class="label_public">
                                       <a href="#">test1</a>
                                   </div>
                                </li>
                                <li>
                                    <div class="label_public">
                                        <a href="#">test2</a>
                                    </div>
                                 </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            
            <div id="swiper-container__id" class="swiper-container">
                <article id="main_art" class="swiper-wrapper">
                    <nav class="swiper-slide">
                        <div class="box"><a href="#">Java</a></div>
                    </nav>
                    <nav class="swiper-slide">
                        <div class="box"><a href="#">Script</a></div>
                    </nav>
                    <nav class="swiper-slide">
                        <div class="box"><a href="#">HTML</a></div>
                    </nav>
                    <nav class="swiper-slide">
                        <div class="box"><a href="#">CSS</a></div>
                    </nav>
                    <nav class="swiper-slide">
                        <div class="box"><a href="#">Js</a></div>
                    </nav>
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
  	