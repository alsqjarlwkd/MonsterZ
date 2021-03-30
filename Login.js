const LoginBtn = document.querySelector(`.LoginBtn`);
const JoinUsBtn = document.querySelector(`.JoinUsBtn`);
function ClickLogin(){
    const Form = document.querySelector('.LoginForm');
    var ID = document.getElementById('ID');
    var PWD = document.getElementById('PWD');

    if(ID.value === ""){
        alert("아이디를 입력해주세요.");
    }
    else if(PWD.value === ""){
        alert("비밀번호를 입력해주세요.");
    }
    else if(ID.value != "" & PWD.value != ""){
        Form.submit();
    }
}
function ClickJoinUs(){
}
function showIDSearchPopup() {
    window.open("SearchID.html", "", "width=400, height=300, left=100, top=50",);
    window.resizeTo(400,300);
    }
function ShowPWSearchPopup(){
   window.open("SearchPW.html", "", "width=400, height=300, left=100, top=50",);
   window.resizeTo(400,300);
}
function init(){
    LoginBtn.addEventListener("click",ClickLogin);
    JoinUsBtn.addEventListener("click",ClickJoinUs);
}
init();