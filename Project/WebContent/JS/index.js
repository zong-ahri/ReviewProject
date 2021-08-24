const contain_icon = document.querySelector('#contain_icon');
const menu_flag = document.querySelector('#menu_flag');
const swiper_container = document.querySelector('#swiper-container__id');
const close_btn = document.querySelector('#close_btn');

contain_icon.onclick = () => {
    if(menu_flag.value == 'false' ){
        const all_manus = document.querySelector('#all_manus');

        menu_flag.value = true;
        all_manus.style.display = "block";
        swiper_container.style.display = "none";
    }else {
        const all_manus = document.querySelector('#all_manus');
        
        menu_flag.value = false;
        all_manus.style.display = "none";
        swiper_container.style.display = "block";
    }
}

close_btn.onclick = () => {
        const all_manus = document.querySelector('#all_manus');
        
        menu_flag.value = false;
        all_manus.style.display = "none";
        swiper_container.style.display = "block";
}