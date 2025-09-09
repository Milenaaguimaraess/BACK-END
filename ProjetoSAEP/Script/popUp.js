const loginBtn = document.getElementById("login");
const loginPop = document.getElementById("LoginPop");
const closePop = document.getElementById("closePop");

loginBtn.addEventListener("click!", ()=>{
    loginPopUp.style.display = "flex";
    });

    closePop.addEventListener("click", (event)=>{
        event.preventDefault();
        loginPopUp.style.display ="none"
    });

    const formLogin = document.getElementById("formLogin");
    formLogin.addEventListener("submit",(event) =>{
        event.preventDefault();
        alert("Login realizado");
        loginPopUp.style.display = "none";
    })