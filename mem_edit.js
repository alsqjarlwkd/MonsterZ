const inputpassword = document.getElementById(`inputpassword`);
const inputOkpassword = document.getElementById(`inputOkpassword`);
const inputPhone = document.getElementById(`inputPhone`);

const MustBeTyping = document.getElementsByClassName(`MustTypingId`);
const Mem_edit_Btn = document.querySelector(`.Mem_edit_btn`);

function Checkinput() {
    if (inputpassword.value === "") {
        MustBeTyping[0].style.display = `block`;
    } else {
        MustBeTyping[0].style.display = `none`;
    }
}

function Checkinput2() {
    if (inputOkpassword.value === "") {
        MustBeTyping[1].style.display = `block`;
    } else {
        MustBeTyping[1].style.display = `none`;
    }
}

function Checkinput3() {
    if (inputPhone.value === "") {
        MustBeTyping[2].style.display = `block`;
    } else {
        MustBeTyping[2].style.display = `none`;
    }
}

function Mem_edit() {
    const Form = document.querySelector(`.Mem_edit_Form`);
    if (inputpassword.value === "" || inputOkpassword.value === "" || inputPhone.value === "") {
        alert('공백이 있으면 안됌');
    } else {
        Form.submit();
    }
}

function init() {
    inputpassword.addEventListener("click", Checkinput);
    inputOkpassword.addEventListener("click", Checkinput2);
    inputPhone.addEventListener("click", Checkinput3);
    Mem_edit_Btn.addEventListener("click", Mem_edit);
}
init();