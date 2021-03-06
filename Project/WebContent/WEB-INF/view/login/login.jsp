<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="shortcut icon" type="image?x-icon" href="/IMAGES/TitleLogo.png">
    <link rel="stylesheet" href="/CSS/style.css">
    <link rel="stylesheet" href="/CSS/ingin.css">
</head>
<body>
    <header id="header">
        <div id="header_title">
            <a href="/index">
                <img src="/IMAGES/TitleLogo.png" id="title_logo">
                " Let's review it well."
            </a>
        </div>
    </header>
    <main id="main">
        <div id="container">
            <form id="login_form" method = "post" action="login">
                <input type="hidden" id="loginflag" name="loginflag" value="<%=request.getAttribute("loginflag") %>">
                <div id="login_content">
                    <div class="login_item">
                        <div class="text_box">
                            <input type="text" id="id" placeholder="id" name="user_id" value="<%=request.getAttribute("user_id") %>">
                        </div>
                        <div id="id_error" class="error">
                            Please enter id.
                        </div>
                    </div>
                    
                    <div class="login_item">
                        <div class="text_box">
                           <input type="password" id="pwd" placeholder="password" name="user_pwd">
                        </div>
                        <div id="pwd_error" class="error">
                            Please enter password.
                        </div>
                    </div>

                    <div id="submit_box">
                   		<input type="hidden" id="submitflag" name="submitflag" value="false">
                        <input type="button" id="input_submit" value="Login">
                    </div>
                    
                    <div>
                        <hr>
                        <div id="login_chk_box">
                            <input type="checkbox" id="login_chk">
                            <label for="login_chk" id="login_labal"></label>
                            <label for="login_chk" id="chk_label">login keep check</label>
                        </div>
                    </div>
                </div>
            </form>
            <div id="login_join">
                <hr>    
                <a href="/join">Join</a>
                <hr>
            </div>
        </div>
    </main>
    
    <jsp:include page="/WEB-INF/view/footer/footer.jsp"></jsp:include>

    <script src="/JS/login.js"></script>
</body>
</html>