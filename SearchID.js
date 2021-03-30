const SearchidBtn = document.querySelector(`.SearchID`);
const SearchidCancel = document.querySelector(`.SearchID_cancel`);
const inputID = document.getElementById(`name`);
const inputEamil = document.getElementById(`Phone`);
const SearchID_Form = document.querySelector(`.SearchIDForm`);

function SearchIdbtnClick(){
    if(inputID.value == "" || inputEamil.value == "")
    {
        alert("공백이 있으면 안됩니다!");
    }
    else
    {
        SearchID_Form.submit();
    }
}

function SearchIdbtnCancel(){
    window.close();
}
function init(){
    SearchidBtn.addEventListener("click",SearchIdbtnClick);
    SearchidCancel.addEventListener("click",SearchIdbtnCancel);
}
init();
