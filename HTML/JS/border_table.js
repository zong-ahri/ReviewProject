const title_btn = document.querySelector('#title_btn');
const title_flag = document.querySelector('#title_flag');
const title_add = document.querySelector('#title_add');
const title_add_form = document.querySelector('#title_add_form');
const title_close = document.querySelector('#title_close');
const title_text = document.querySelector('#title_text');
const content_btn = document.querySelectorAll('.content_btn');
const content_flag = document.querySelectorAll('.content_flag');
const add_form = document.querySelectorAll('.add_form');
const content_add = document.querySelectorAll('.content_add');
const content_close = document.querySelectorAll('.content_close');
const content_text = document.querySelectorAll('.content_text');
const title_submit_flag = document.querySelector("#title_submit_flag");
const content_submit_flag = document.querySelectorAll(".content_submit_flag");

const title_delete = document.querySelectorAll(".title_delete");
const title_code = document.querySelectorAll(".title_code");
const content_delete = document.querySelectorAll(".content_delete");
const content_code = document.querySelectorAll(".content_code");

title_btn.onclick = () => {
	if (title_flag.value == 'false') {
		title_flag.value = true;
	}else {
		title_flag.value = false;
		title_btn.style.display = "none";
		title_add_form.style.display = "flex";
	}
}

title_add.onclick = () => {
	if(title_text.value == ""){
		alert("입력값이 없습니다.");
	}else {
		title_submit_flag.value = true; 
		title_add_form.submit();
	}       
}

title_close.onclick = () => {
	if (title_flag.value == 'true') {
		title_flag.value = flase;
	}else {
		title_flag.value = true;
		title_btn.style.display = "block";
		title_add_form.style.display = "none";
	}
}

for(let i = 0; i < title_delete.length; i++){
	title_delete[i].addEventListener('click', function(event){
		confirm("정말 삭제하시겠습니까 ?")
		location.replace("/borderdelete?border_code=" + title_delete[i].value)
	});
}

for(let i = 0; i < content_btn.length; i++){
	content_btn[i].addEventListener('click', function(event){
		if (content_flag[i].value == 'false') {
			content_flag[i].value = true;
		}else {
			content_flag[i].value = false;
			content_btn[i].style.display = "none";
			add_form[i].style.display = "flex";
		}
	});
	
	content_add[i].addEventListener('click', function(event){
		if(content_text[i].value == ""){
			alert("입력값이 없습니다.");
		}else {
			
			content_submit_flag[i].value = true;
			add_form[i].submit();
		}       
	});
	
	content_close[i].addEventListener('click', function(event){
		if (content_flag[i].value == 'true') {
			content_flag[i].value = flase;
		}else {
			content_flag[i].value = true;
			content_btn[i].style.display = "block";
			add_form[i].style.display = "none";
		}
	});
	
	content_delete[i].addEventListener('click', function(event){
		confirm("정말 삭제하시겠습니까 ?")
		location.replace("/borderdelete?border_code=" + content_code[i].value + "&border_seq=" + content_delete[i].value)
	});
}