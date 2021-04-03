const JAVASCRIPT_SDK_APP_KEY = '55a8e3f4af7b3fa4a8baa725b75248d2';

window.addEventListener('load', init);

function init() {
    console.log('init');
    Kakao.init(JAVASCRIPT_SDK_APP_KEY);
    console.log(Kakao.isInitialized());

    console.log(window.location.pathname)
    if (isLoggedin()) {
        if (window.location.pathname !== '/DefaultkaKao.html') {
            window.location.pathname = '/DefaultkaKao.html';
        }
    } else {
        if (window.location.pathname !== '/Login.html') {
            window.location.pathname = '/Login.html';
        }
    }
}

function isLoggedin() {
    return Boolean(Kakao.Auth.getAccessToken());
}