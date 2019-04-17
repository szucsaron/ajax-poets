function showLogin() {
    loginEl.style.display = 'block';
    clearLoginMsg();
}

function onLoginResponse() {
    if (this.status === OK) {
        globalSessionUser = JSON.parse(this.responseText);
        showWorklist();
    } else {
        setLoginMsg("Invalid name or password");
    }
}

function setLoginMsg(message) {
    msgEl = document.getElementById("login-msg");
    msgEl.textContent = message;
}

function clearLoginMsg() {
    msgEl = document.getElementById("login-msg");
    msgEl.textContent = "";
}

function onLoginButtonClicked() {
    const loginFormEl = document.forms['login-form'];

    const emailInputEl = loginFormEl.querySelector('input[name="email"]');
    const passwordInputEl = loginFormEl.querySelector('input[name="password"]');

    const name = emailInputEl.value;
    const password = passwordInputEl.value;

    const params = new URLSearchParams();
    params.append('name', name);
    params.append('password', password);

    const xhr = new XMLHttpRequest();
    xhr.addEventListener('load', onLoginResponse);
    xhr.addEventListener('error', onNetworkError);
    xhr.open('POST', 'login');
    xhr.send(params);
}

function onLogoutButtonClicked() {
    hideEverything();
    showLogin();
}