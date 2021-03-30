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
function init(){
    LoginBtn.addEventListener("click",ClickLogin);
    JoinUsBtn.addEventListener("click",ClickJoinUs);
}
init();