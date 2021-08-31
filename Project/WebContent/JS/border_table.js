const title_btn = document.querySelector('#title_btn');
const title_flag = document.querySelector('#title_flag');
const title_add_form = document.querySelector('#title_add_form');
const title_close = document.querySelector('#title_close');
const content_btn = document.querySelectorAll('.content_btn');
const content_flag = document.querySelectorAll('.content_flag');
const add_form = document.querySelectorAll('.add_form');
const content_close = document.querySelectorAll('.content_close');

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
}

for(const closeButton of content_close){
	closeButton.addEventListener('click', function(event){
		if (content_flag.value == 'true') {
			content_flag.value = flase;
		}else {
			content_flag.value = true;
			closeButton.style.display = "block";
			add_form.style.display = "none";
		}
	});
}

title_btn.onclick = () => {
	if (title_flag.value == 'false') {
		title_flag.value = true;
	}else {
		title_flag.value = false;
		title_btn.style.display = "none";
		title_add_form.style.display = "flex";
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

