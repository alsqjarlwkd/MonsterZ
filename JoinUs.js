const InputId = document.getElementById(`inputId`);
const inputpassword = document.getElementById(`inputpassword`);
const inputOkpassword = document.getElementById(`inputOkpassword`);
const inputname = document.getElementById(`inputname`);
const inputPhone = document.getElementById(`inputPhone`);

const MustBeTyping = document.getElementsByClassName(`MustTypingId`);
const JoinUsBtn = document.querySelector(`.JoinUs_btn`);

function Checkinput(){
    if(InputId.value === "")
    {
        MustBeTyping[0].style.display=`block`;
    }
    else{
        MustBeTyping[0].style.display=`none`;
    }
}

function Checkinput2(){
    if(inputpassword.value === "")
    {
        MustBeTyping[1].style.display=`block`;
    }
    else{
        MustBeTyping[1].style.display=`none`;
    }
}

function Checkinput3(){
    if(inputOkpassword.value === "")
    {
        MustBeTyping[2].style.display=`block`;
    }
    else{
        MustBeTyping[2].style.display=`none`;
    }
}
function Checkinput4(){
    if(inputname.value === "")
    {
        MustBeTyping[3].style.display=`block`;
    }
    else{
        MustBeTyping[3].style.display=`none`;
    }
}
function Checkinput5(){
    if(inputPhone.value === "")
    {
        MustBeTyping[4].style.display=`block`;
    }
    else{
        MustBeTyping[4].style.display=`none`;
    }
}
function JoinUs(){
    const Form = document.querySelector(`.JoinUsForm`);
    if(InputId.value === "" || inputpassword.value === "" ||inputOkpassword.value === "" || inputname.value === "" || inputPhone.value === "")
    {
        alert('공백이 있으면 안됌');
    }
    else{
        Form.submit();
    }
}
function ChangeMonth(){
    const inputMonth = document.getElementById(`inputMonth`);
    const SelectBox = document.getElementById(`Months`);
    let SelectBoxIndex = document.getElementById(`Months`).options.selectedIndex;
        console.log("tb value : " + SelectBox.options[SelectBoxIndex].value);
        inputMonth.value = SelectBoxIndex;
        if(SelectBoxIndex === 0)
        {
            inputMonth.value = `===월 선택===`;
        }
}
function init(){
    InputId.addEventListener("click",Checkinput);
    inputpassword.addEventListener("click",Checkinput2);
    inputOkpassword.addEventListener("click",Checkinput3);
    inputname.addEventListener("click",Checkinput4);
    inputPhone.addEventListener("click",Checkinput5);
    JoinUsBtn.addEventListener("click",JoinUs);
}
init();