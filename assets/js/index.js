const btn_form_add_user = document.querySelector('.btn_form_add_user') ?? '';
const form_update_user = document.querySelector('.form_update_user') ?? '';
const form_hd_user = document.querySelector('.form_hd_user') ?? '';
const btn_hd_user = document.querySelector('.btn_hd_user') ?? '';
const btn_close_form_add_user = document.querySelector('.btn_close_form_add_user') ?? '';
const bg_user = document.querySelector('.bg_user') ?? ''
const btn_a_user = document.querySelector('.btn_a_user') ?? ''
const btn_u_user = document.querySelectorAll('.btn_u_user') ?? ''
const btn_d_user = document.querySelectorAll('.btn_d_user') ?? ''
const profile = document.querySelector('.profile') ?? ''
const profile_nav = document.querySelector('.profile_nav') ?? ''
const table_contract_y = document.querySelector('.table_contract_y') ?? ''
const table_contract_n = document.querySelector('.table_contract_n') ?? ''
const btn_table_contract_y = document.querySelector('.btn_table_contract_y') ?? ''
const btn_table_contract_n = document.querySelector('.btn_table_contract_n') ?? ''
const body = document.querySelectorAll('body') ?? ''
const loading = document.querySelector('.loading') ?? ''
const btn_attend = document.querySelectorAll('.btn_attend') ?? ''
const admin_content = document.querySelectorAll('.admin_content') ?? ''
const disabled = document.querySelectorAll('.disabled') ?? ''
const start_time = document.querySelector('.start_time') ?? ''
const p_error = document.querySelector('.error') ?? ''
const btn_add_user = document.querySelector('.btn_add_user');
const inputs = document.querySelectorAll('.validate');
let isUser = document.querySelector('.is_user') ?? ''

for (let i = 0; i < btn_d_user.length; i++) {
    btn_d_user[i].onclick = () =>{
        if (confirm('Xoá người dùng này ?') == true) {
        }
        else {
            event.preventDefault();
        }   
        
    }   
}
// check form add user
function validate() {
    let i = 0;
    for (i; i < inputs.length; i++) {
        if (inputs[i].value == '') {
            btn_add_user.setAttribute('disabled', '');
        }
        else {
            btn_add_user.removeAttribute('disabled');
            break;
        }
    }
}

setInterval(() => {
    validate();
}, 1000);

if (p_error.innerHTML == '') {
    p_error.classList.add('hidden');
} else {
    if (document.querySelector('.error .hidden')) {
        p_error.classList.remove('hidden');
    }
    setTimeout(() => {
        p_error.classList.add('hidden');
    }, 5000);
}
function getTime(action) {
    const d = new Date();
    let hour = d.getHours();
    let m = d.getMinutes();
    let s = d.getSeconds();
    if (action == 1) {
        return hour + ':' + m + ':' + s
    }
    else {
        return hour
    }
}
if (start_time) {
    setInterval(() => {
        start_time.setAttribute('value', getTime(1));
    }, 100)
}
if (isUser.innerHTML == 'admin') {

}
else {
    console.log('aa')
    for (let j = 0; j < admin_content.length; j++) {
        admin_content[j].innerHTML = `<div class="text-center font-medium text-2xl mx-40">
        <div class="p-40 shadow-xl m-auto">
            <p class="m-20 block">Trang dành cho người quản trị</p>
            <a class="bg-sky-500 text-white rounded m-2 p-2 text-xl" href="./dangxuat">Đăng nhập </a><button>với quyền quản trị?</button>
            <a class="block bg-sky-500 text-white rounded m-auto mt-10 p-2 w-1/3 text-center text-4xl" href="./diemdanh">Điểm danh</a>
        </div>
    </div>`
    }
    for (let j = 0; j < disabled.length; j++) {
        disabled[j].setAttribute('disabled', '');
    }

}
for (let j = 0; j < btn_attend.length; j++) {
    btn_attend[j].onclick = () => {
        alert('Điểm danh thành công');
    }
}
// if(hour > 7) {
//     btn_attend.setAttribute('disabled', '');
// }

window.addEventListener('load', () => {
    if (loading) {
        loading.style.display = 'block';
        setTimeout(() => {
            loading.style.display = 'none';
        }, 500)
    }
});

function handleForm(acction) {
    if (acction == 'open') {
        form_update_user.classList.add('block');
        form_update_user.classList.remove('hidden');
        bg_user.classList.add('opacity-70')
    }
    else {
        form_update_user.classList.add('hidden');
        form_update_user.classList.remove('block');
        bg_user.classList.remove('opacity-70')
    }
}
btn_form_add_user.onclick = () => {
    handleForm('open')
}
btn_close_form_add_user.onclick = () => {
    handleForm('close')
}
const swap = (table1, table2, btn1, btn2) => {
    table1.classList.remove('hidden')
    table2.classList.add('hidden');
    btn1.classList.add('bg-sky-700', 'focus:ring-sky-400')
    btn2.classList.remove('bg-sky-700', 'focus:ring-sky-400');
}
btn_table_contract_y.onclick = () => {
    swap(table_contract_y, table_contract_n, btn_table_contract_y, btn_table_contract_n)
}
btn_table_contract_n.onclick = () => {
    swap(table_contract_n, table_contract_y, btn_table_contract_n, btn_table_contract_y)
}