const SearchPWBtn = document.querySelector(`.SearchPW`);
const SearchPWCancel = document.querySelector(`.SearchPW_cancel`);
const inputName = document.getElementById(`NAME`);
const inputPhone = document.getElementById(`Phone`);
const inputID = document.getElementById(`ID`);
const SearchPW_Form = document.querySelector(`.SearchPWForm`);

function SearchIdbtnClick(){
    if(inputName.value == "" || inputPhone.value == "" ||inputID.value == "" )
    {
        alert("공백이 있으면 안됩니다!");
    }
    else
    {
        SearchPW_Form.submit();
    }
}

function SearchIdbtnCancel(){
    window.close();
}
function init(){
    SearchPWBtn.addEventListener("click",SearchIdbtnClick);
    SearchPWCancel.addEventListener("click",SearchIdbtnCancel);
}
init();