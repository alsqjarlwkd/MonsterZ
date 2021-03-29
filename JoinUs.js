const inputID = document.querySelectorAll(`.inputId`);
const MustBeTyping = document.querySelectorAll(".MustTypingId");
let inputValue = document.querySelectorAll(".inputId").value;


function Checkinput(e){


}
function init(){
    for(let i = 0;i<inputID.length;i++)
{
    inputID[i].addEventListener("click",Checkinput);
}
}

init();