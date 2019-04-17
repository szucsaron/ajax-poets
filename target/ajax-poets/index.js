const OK = 200;
const BAD_REQUEST = 400;
const UNAUTHORIZED = 401;
const NOT_FOUND = 404;
const INTERNAL_SERVER_ERROR = 500;

let loginEl;
let worklistEl;
let workEl;

let globalSessionUser;


function onNetworkError(response) {
    document.body.remove();
    const bodyEl = document.createElement('body');
    document.appendChild(bodyEl);
    newError(bodyEl, 'Network error, please try reloaing the page');
}




function hideEverything() {
    loginEl.style.display = 'none';
    worklistEl.style.display = 'none';
    workEl.style.display = 'none';
}

function onLoad() {
    const loginButtonEl = document.getElementById('login-button');
    loginButtonEl.addEventListener('click', onLoginButtonClicked);

    const workBackButtonEl = document.getElementById('work-back-button');
    workBackButtonEl.addEventListener('click', onWorkBackButtonClicked);

    const logoutButtonEl = document.getElementById('logout-button');
    logoutButtonEl.addEventListener('click', onLogoutButtonClicked);

    const wordCountButtonEl = document.getElementById('word-count-button');
    wordCountButtonEl.addEventListener('click', onWordCountButtonClick);

    loginEl = document.getElementById('login-content');
    worklistEl = document.getElementById('worklist-content');
    workEl = document.getElementById('work-content');

}

document.addEventListener('DOMContentLoaded', onLoad);

