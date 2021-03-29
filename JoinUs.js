const InputId = document.getElementsByClassName(`inputId`);
const MustBeTyping = document.getElementsByClassName(`MustTypingId`);

function Checkinput(){
    if(InputId[0].value === "")
    {
        MustBeTyping[0].style.display=`block`;
    }
    else{
        MustBeTyping[0].style.display=`none`;
    }
}

function Checkinput2(){
    if(InputId[1].value === "")
    {
        MustBeTyping[1].style.display=`block`;
    }
    else{
        MustBeTyping[1].style.display=`none`;
    }
}

function Checkinput3(){
    if(InputId[2].value === "")
    {
        MustBeTyping[2].style.display=`block`;
    }
    else{
        MustBeTyping[2].style.display=`none`;
    }
}
function Checkinput4(){
    if(InputId[3].value === "")
    {
        MustBeTyping[3].style.display=`block`;
    }
    else{
        MustBeTyping[3].style.display=`none`;
    }
}
function Checkinput5(){
    if(InputId[4].value === "")
    {
        MustBeTyping[4].style.display=`block`;
    }
    else{
        MustBeTyping[4].style.display=`none`;
    }
}

function init(){
    InputId[0].addEventListener("click",Checkinput);
    InputId[1].addEventListener("click",Checkinput2);
    InputId[2].addEventListener("click",Checkinput3);
    InputId[3].addEventListener("click",Checkinput4);
    InputId[4].addEventListener("click",Checkinput5);
}
init();
