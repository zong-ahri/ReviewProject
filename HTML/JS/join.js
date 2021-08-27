const join_form = document.querySelector('#join_form');
const id_status = document.querySelector('#id_status');
const input_id = document.querySelector('#id');
const id_duplicate_error = document.querySelector('#id_duplicate_error');
const id_error = document.querySelector('#id_error');
const input_pwd = document.querySelector('#pwd');
const pwd_error = document.querySelector('#pwd_error');
const input_repwd = document.querySelector('#repwd');
const repwd_error = document.querySelector('#repwd_error');
const input_name = document.querySelector('#name');
const name_error = document.querySelector('#name_error');
const input_year = document.querySelector('#year');
const year_error = document.querySelector('#year_error');
let inputYear = Number(input_year.value);
const input_month = document.querySelector('#month');
const month_error = document.querySelector('#month_error');
const input_day = document.querySelector('#day');
const day_error = document.querySelector('#day_error');
let inputDay = Number(input_day.value)
const input_gender = document.querySelector('#gender_pro');
const gender_error = document.querySelector('#gender_error');
const input_email = document.querySelector('#email');
const email_error = document.querySelector('#email_error');
const submit_flag = document.querySelector('#submitflag')
const submit_button = document.querySelector('#but_box')


//아이디중복확인
if(id_status.value == "true") {
	id_duplicate_error.style.display = "block";
}else {
	id_duplicate_error.style.display = "none";
}	
//아이디오류
input_id.onblur = () => {
    if(input_id.value.length == 0) {
        id_error.style.display = "block";
    }else {
		location.replace("/joinidcheck?join_id="+input_id.value);
	}
}
//비밀번호오류
input_pwd.onblur = () => {
    if(input_pwd.value.length == 0) {
        pwd_error.style.display = "block";
    }else {
        pwd_error.style.display = "none";
    }
}
//비밀번호확인오류
input_repwd.onblur = () => {
    if(input_repwd.value != input_pwd.value || input_repwd.value.length == 0) {
        repwd_error.style.display = "block";
    }else {
        repwd_error.style.display = "none";
    }
}
//이름오류
input_name.onblur = () => {
    if(input_name.value.length == 0) {
        name_error.style.display = "block";
    }else {
        name_error.style.display = "none";
    }
}
//생일오류
//YEAR
input_year.onblur = () => {
    if(input_year.value.length == 0 || isNaN(inputYear)) {
        year_error.style.display = "block";
        month_error.style.display = "none";
        day_error.style.display = "none";
    }else if(input_month.value == "") {
        year_error.style.display = "none";
        month_error.style.display = "block";
        day_error.style.display = "none";
    }else if(input_day.value.length == 0 || isNaN(inputDay)) {
        year_error.style.display = "none";
        month_error.style.display = "none";
        day_error.style.display = "block";
    }else {
        year_error.style.display = "none";
        month_error.style.display = "none";
        day_error.style.display = "none";
    }
}
//MONTH
input_month.onblur = () => {
    if(input_year.value.length == 0 || isNaN(inputYear)) {
        year_error.style.display = "block";
        month_error.style.display = "none";
        day_error.style.display = "none";
    }else if(input_month.value == "") {
        year_error.style.display = "none";
        month_error.style.display = "block";
        day_error.style.display = "none";
    }else if(input_day.value.length == 0 || isNaN(inputDay)) {
        year_error.style.display = "none";
        month_error.style.display = "none";
        day_error.style.display = "block";
    }else {
        year_error.style.display = "none";
        month_error.style.display = "none";
        day_error.style.display = "none";
    }
}
//DAY
input_day.onblur = () => {
    if(input_year.value.length == 0 || isNaN(inputYear)) {
        year_error.style.display = "block";
        month_error.style.display = "none";
        day_error.style.display = "none";
    }else if(input_month.value == "") {
        year_error.style.display = "none";
        month_error.style.display = "block";
    }else if(input_day.value.length == 0 || isNaN(inputDay)) {
        year_error.style.display = "none";
        month_error.style.display = "none";
        day_error.style.display = "block";
    }else {
        year_error.style.display = "none";
        month_error.style.display = "none";
        day_error.style.display = "none";
    }
}
//성별오류
input_gender.onblur = () => {
    if(input_gender.value == "") {
        gender_error.style.display = "block";
    }else {
        gender_error.style.display = "none";
    }
}
//이메일오류
input_email.onblur = () => {
    if(input_email.value.length == 0) {
        email_error.style.display = "block";
    }else {
        email_error.style.display = "none";
    }
}

//회원가입버튼
submit_button.onclick = () => {
    if(id_status == "true") {
        return;
    }else if(input_id.value.length == 0) {
        return;
    }else if(input_repwd.value != input_pwd.value || input_repwd.value.length == 0) {
        return;
    }else if(input_name.value.length == 0) {
        return;
    }else if(input_year.value.length == 0 || isNaN(inputYear)) {
        return;
    }else if(input_month.value == "") {
        return;
    }else if(input_day.value.length == 0 || isNaN(inputDay)) {
        return;
    }else if(input_gender.value == "") {
        return;
    }else if(input_email.value.length == 0) {
        return;
    }

    join_form.submit();
}
