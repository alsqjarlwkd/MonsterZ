const LoginBtn = document.querySelector(`.LoginBtn`);
const JoinUsBtn = document.querySelector(`.JoinUsBtn`);
function ClickLogin(){
    alert("현재 해당 기능 구현중입니다. 잠시만 기다려주세요!")
}
function ClickJoinUs(){
    alert("현재 해당 기능 구현중입니다. 잠시만 기다려주세요!")
}
function init(){
    LoginBtn.addEventListener("click",ClickLogin);
    JoinUsBtn.addEventListener("click",ClickJoinUs);

}
init();