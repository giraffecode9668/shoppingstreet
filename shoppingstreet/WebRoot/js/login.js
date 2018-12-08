/*function login_r() {
    document.getElementsByClassName(".login-form .qrcode-login").style.display = "none";
    document.getElementsByClassName(".login-form .qrcode-login").style.visibility = "visible";
    document.getElementsByClassName(".login-form .login-box").style.display = "block";
    document.getElementsByClassName(".login-form .login-box").style.visibility = "visible";
}*/

function login_r() {
    let i;
    let divset = document.getElementsByClassName("qrcode-login");
    for (i = 0; i < divset.length; i++) {
            divset[i].style.display = "none";
        }
        divset = document.getElementsByClassName(".qrcode-login");
        for (i = 0; i < divset.length; i++) {
            divset[i].style.visibility = "visible";
        }
        divset = document.getElementsByClassName("login-box");
        for (i = 0; i < divset.length; i++) {
            divset[i].style.display = "block";
        }
        divset = document.getElementsByClassName("login-box");
        for (i = 0; i < divset.length; i++) {
            divset[i].style.visibility = "visible";
        }
}


/*function login_l() {
    document.getElementsByClassName(".login-form .qrcode-login").style.display = "block";
    document.getElementsByClassName(".login-form .qrcode-login").style.visibility = "visible";
    document.getElementsByClassName(".login-form .login-box").style.display = "none";
    document.getElementsByClassName(".login-form .login-box").style.visibility = "visible";
}*/

function login_l() {
        let i;
    let divset = document.getElementsByClassName("qrcode-login");
        for (i = 0; i < divset.length; i++) {
            divset[i].style.display = "block";
        }
        divset = document.getElementsByClassName("qrcode-login");
        for (i = 0; i < divset.length; i++) {
            divset[i].style.visibility = "visible";
        }
        divset = document.getElementsByClassName("login-box");
        for (i = 0; i < divset.length; i++) {
            divset[i].style.display = "none";
        }
        divset = document.getElementsByClassName("login-box");
        for (i = 0; i < divset.length; i++) {
            divset[i].style.visibility = "visible";
        }
}