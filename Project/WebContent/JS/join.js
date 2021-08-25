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
const input_month = document.querySelector('#month');
const month_error = document.querySelector('#month_error');
const input_day = document.querySelector('#day');
const day_error = document.querySelector('#day_error');

if(id_status == "true") {
    id_duplicate_error.style.display = "block";
}else {
    id_duplicate_error.style.display = "none";
}

input_id.onblur = () => {
    if(input_id.value.length == 0) {
        id_error.style.display = "block";
    }else {
        id_error.style.display = "none";
        location.href="JoinIdCheck?user_id="+input_id.value;
    }
}

input_pwd.onblur = () => {
    if(input_pwd.value.length == 0) {
        pwd_error.style.display = "block";
    }else {
        pwd_error.style.display = "none";
        join_form.submit();
    }
}

input_repwd.onblur = () => {
    if(input_repwd.value != input_pwd.value || input_repwd.value.length == 0) {
        repwd_error.style.display = "block";
    }else {
        repwd_error.style.display = "none";
        join_form.submit();
    }
}

input_name.onblur = () => {
    if(input_name.value.length == 0) {
        name_error.style.display = "block";
    }else {
        name_error.style.display = "none";
        join_form.submit();
    }
}

input_year.onblur = () => {
    let inputYear = Number(input_year.value);
    if(input_year.value.length == 0 || isNaN(inputYear)) {
        year_error.style.display = "block";
    }else {
        year_error.style.display = "none";
        join_form.submit();
    }
}

input_month.onblur = () => {
    if(input_month.value == 0) {
        month_error.style.display = "block";
    }else {
        month_error.style.display = "none";
        join_form.submit();
    }
}

input_day.onblur = () => {
    let inputDay = Number(input_day.value)
    if(input_day.value == 0 || isNaN(inputDay)) {
        day_error.style.display = "block";
    }else {
        day_error.style.display = "none";
        join_form.submit();
    }
}

