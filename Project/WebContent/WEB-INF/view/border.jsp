<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Border</title>
    <link rel="shortcut icon" type="image?x-icon" href="/IMAGES/TitleLogo.svg">
    <link rel="stylesheet" href="/CSS/style.css">
    <link rel="stylesheet" href="/CSS/border.css">
</head>
<body>
    <header id="header">
        <nav class="box">
            <div id="left_nav">
                <a href="#"><img src="/IMAGES/TitleLogo.svg" id="logo"> Let's review it well.</a>
            </div>
            <div id="right_nav">
                <li>
                    <a href="#">Login</a>
                </li>
                <li>
                    <a href="#">Join</a>
                </li>
                <li>    
                    <a href="#">username</a>
                </li>
                <li>
                    <a href="#">logout</a>
                </li>
                <li>
                    <span id="help">Help</span>
                </li>
            </div>
        </nav>
    </header>
    <main id="main">
        <div id="side_bar">
            <div>
                <div class="group">
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
                                 <a href="#">Javva2</a>
                             </div> 
                        </li>
                        <li>
                             <div class="label_public">
                                 <a href="#">Ja3</a>
                             </div> 
                        </li>
                        <li>
                             <div class="label_public">
                                 <a href="#">Java4Jaava4Java4</a>
                             </div> 
                        </li>
                        <li>
                            <div class="label_public">
                                <a href="#">Java1</a>
                            </div> 
                        </li>
                        <li>
                             <div class="label_public">
                                 <a href="#">Javva2</a>
                             </div> 
                        </li>
                        <li>
                             <div class="label_public">
                                 <a href="#">Ja3</a>
                             </div> 
                        </li>
                        <li>
                             <div class="label_public">
                                 <a href="#">Java5555555555</a>
                             </div> 
                        </li>
                        <li>
                            <div class="label_public">
                                <a href="#">Java666666666666ava4</a>
                            </div> 
                       </li>
                       <li>
                        <div class="label_public">
                            <a href="#">Java47777777777777a4Java4</a>
                        </div> 
                   </li>
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
    <footer id="footer">
        <article class="box" id="information">
            <table id="front">
                <caption>
                    FrontEnd Information
                </caption>
                <tr>
                    <td class="info_emp">name</td>
                    <td>Choi Jong Won</td>
                </tr>
                <tr>
                    <td class="info_emp">birthday</td>
                    <td>1998.01.18</td>
                </tr>
                <tr>
                    <td class="info_emp">gender</td>
                    <td>male</td>
                </tr>
                <tr>
                    <td class="info_emp">email</td>
                    <td>choijoy10@naver.com</td>
                </tr>
                <tr>
                    <td class="info_emp">phone</td>
                    <td>010-3003-7022</td>
                </tr>
            </table>
            <table id="back">
                <caption>
                    BackEnd Information
                </caption>
                <tr>
                    <td class="info_emp">name</td>
                    <td>Kwon Hyuk In</td>
                </tr>
                <tr>
                    <td class="info_emp">birthday</td>
                    <td>1997.10.24</td>
                </tr>
                <tr>
                    <td class="info_emp">gender</td>
                    <td>male</td>
                </tr>
                <tr>
                    <td class="info_emp">email</td>
                    <td>khin3910@hanmail.net</td>
                </tr>
                <tr>
                    <td class="info_emp">phone</td>
                    <td>010-3910-9860</td>
                </tr>
            </table>
        </article>
    </footer>
</body>
</html>