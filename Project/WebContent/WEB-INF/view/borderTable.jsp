<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Border-Table</title>
    <link rel="shortcut icon" type="image?x-icon" href="/IMAGES/TitleLogo.svg">
    <link rel="stylesheet" href="/CSS/style.css">
    <link rel="stylesheet" href="/CSS/border_table.css">
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
                <input type="text" >
                <button>+</button>
                <button>+</button>
                <button>x</button>
                <div class="group">
                    <div class="group_title">
                        <a href="#">Java</a>
                        <button>-</button>
                        <hr>
                    </div>
                    <ul class="sub_nav">
                        <li>
                            <div class="label_public">
                                <a href="#">Java1</a>
                                <button>-</button>
                            </div> 
                         </li>
                         <li>
                             <div class="label_public">
                                 <a href="#">Java2</a>
                                 <button>-</button>
                             </div> 
                          </li>
                          <li>
                             <div class="label_public">
                                 <a href="#">Java3</a>
                                 <button>-</button>
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
                          <input type="text">
                          <button>+</button>
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
                          <li>
                             <div class="label_public">
                                 <a href="#">CSS3</a>
                             </div> 
                          </li>
                          <li>
                             <div class="label_public">
                                 <a href="#">CSS4</a>
                             </div> 
                          </li>
                          <li>
                            <div class="label_public">
                                <a href="#">CSS5</a>
                            </div> 
                         </li>
                         <li>
                             <div class="label_public">
                                 <a href="#">CSS6</a>
                             </div> 
                          </li>
                          <li>
                             <div class="label_public">
                                 <a href="#">CSS7</a>
                             </div> 
                          </li>
                          <li>
                             <div class="label_public">
                                 <a href="#">CSS8</a>
                             </div> 
                          </li>
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