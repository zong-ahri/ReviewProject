const input_id = document.querySelector('#id');
input_id.onblur = () => {
    if(input_id.value.length == 0){
        const id_error = document.querySelector('#id_error');
        id_error.style.display = "block";
    }else {
        const id_error = document.querySelector('#id_error');
        id_error.style.display = "none";
    }
}

const submit_button = document.querySelector('#input_submit');
submit_button.onclick = () => {
    if(input_id.value.length == 0){
        const id_error = document.querySelector('#id_error');
        id_error.style.display = "block";
    }else {
        const id_error = document.querySelector('#id_error');
        id_error.style.display = "none";
        
        const input_pwd = document.querySelector('#pwd');
        if(input_pwd.value.length == 0){
            const pwd_error = document.querySelector('#pwd_error');
            pwd_error.style.display = "block";
        }else {
            const pwd_error = document.querySelector('#pwd_error');
			const loginform = document.querySelector('#login_form');
			const submitflag = document.querySelector('#submitflag');
            pwd_error.style.display = "none";
			submitflag.value = "true";
			loginform.submit();
        }
    }
}

