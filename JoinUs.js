const InputId = document.querySelector(`#inputId`);
const MustBeTyping = document.getElementById("MustTypingId");

function Checkinput(){
    if(InputId.value == null)
    {
        MustBeTyping.style.display ===`block`;
        console.log("클릭");
    }
}

function init(){
    InputId.addEventListener("click",Checkinput)
}
init();