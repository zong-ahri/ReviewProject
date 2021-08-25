<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Join</title>
    <link rel="shortcut icon" type="image?x-icon" href="/IMAGES/TitleLogo.png">
    <link rel="stylesheet" href="/CSS/style.css">
    <link rel="stylesheet" href="/CSS/join.css">
</head>
<body>
    <header id="header">
        <div id="header_title">
            <a href="#">
                <img src="/IMAGES/TitleLogo.png" id="title_logo">
                " Let's review it well."
            </a>
        </div>
    </header>
    <main id="main">
        <div id="container">
            <form id="join_form">
                <div id="join_content">
                    <div class="box">
                        <label class="join_font">Id</label>
                        <input type="hidden" id="id_status">
                        <input type="text" class="text_pro" id="id" name="join_id">
                        <span class="error" id="id_duplicate_error">Duplicate ID.</span>
                        <span class="error" id="id_error">Please enter id.</span>
                    </div>
                    <div class="box">
                        <label class="join_font">Password</label>
                        <input class="text_pro" id="pwd" type="password">
                        <span class="error" id="pwd_error">Please enter password.</span>
                    </div>
                    <div class="box">
                        <label class="join_font">Reconfirm Password</label>
                        <input class="text_pro" id="repwd" type="password">
                        <span class="error" id="repwd_error">Passwords do not match.</span>
                    </div>
                    <div class="box">
                        <label class="join_font">Name</label>
                        <input class="text_pro" id="name" type="text">
                        <span class="error" id="name_error">Please enter name.</span>
                    </div>
                    <div class="box">
                        <label class="join_font">birthday</label>
                        <div>
                            <div class="birth_box">
                                <input class="text_pro" id="year" type="text" placeholder="YEAR" maxlength="4">
                            </div>
                            <div class="birth_box">
                                <select class="text_pro" id="month">
                                    <option value="0">월</option>
                                    <option value="1">2</option>
                                    <option value="2">3</option>
                                    <option value="3">4</option>
                                    <option value="4">5</option>
                                    <option value="5">1</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                            </div>
                            <div class="birth_box">
                                <input class="text_pro" id="day" type="text" placeholder="DAY"  maxlength="2">
                            </div>
                        </div>
                        <span class="error" id="year_error">Please enter the exact four digits of your birth year.</span>
                        <span class="error" id="month_error">Select the month you were born.</span>
                        <span class="error" id="day_error">Please enter the exact 2 digits of the date of birth.</span>
                    </div>
                    <div class="box">
                        <label class="join_font">Gender</label>
                        <div class="box" id="Gender_box">
                            <select id="Gender_pro">
                                <option>성별</option>
                                <option>남자</option>
                                <option>여자</option>
                                <option>선택 안함</option>
                            </select>
                        </div>
                        <span class="error">Please enter gender.</span>
                    </div>
                    <div class="box">
                        <label class="join_font">Email (Choice)</label>
                        <input class="text_pro" type="text">
                    </div>
                    <div class="box">
                        <label class="join_font">Phone Number</label>
                        <div>
                            <div class="phone_box">
                                <select class="text_pro">
                                    <option>010</option>
                                    <option>011</option>
                                    <option>016</option>
                                    <option>017</option>
                                    <option>018</option>
                                    <option>019</option>
                                </select>
                            </div>
                            <div class="birth_box">
                                <input class="text_pro" type="text">
                            </div>
                            <div class="birth_box">
                                <input class="text_pro" type="text">
                            </div>
                        </div>
                        <span class="error" id="first_error">Please enter first phone number.</span>
                        <span class="error" id="middle_error">Please enter middel phone number.</span>
                        <span class="error" id="last_error">Please enter last phone number.</span>
                    </div>
                    <div class="box">
                        <button type="button" id="but_box"><span>Join</span></button>
                    </div>

                </div>
            </form>
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
    <script src="/JS/join.js"></script>
</body>
</html>