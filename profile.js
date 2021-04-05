const accountInfo = {};

window.addEventListener('load', initView);

function initView() {
    const btnKakaoLogout = document.getElementById('btn_kakao_logout');
    const btnKakaoUnsub = document.getElementById('btn_kakao_unsub');
    btnKakaoLogout.addEventListener('click', logout);
    btnKakaoUnsub.addEventListener('click', unsubscribe);

    requestData();
}

function logout() {
    Kakao.Auth.logout(function() {
        console.log(Kakao.Auth.getAccessToken());
        window.location.href = ''
    });
}

function unsubscribe() { // 회원 탈퇴
    Kakao.API.request({
        url: '/v1/user/unlink',
        success: function(response) {
            console.log(response);
            Kakao.Auth.logout(function() {
                console.log(Kakao.Auth.getAccessToken());
                window.location.href = ''
            });
        },
        fail: function(error) {
            console.log(error);
        },
    });
}

function requestData() {
    Kakao.API.request({
        url: '/v2/user/me',
        success: function(response) {
            initProfileView(response);
            console.log(response);
        },
        fail: function(error) {
            console.log(error);
        }
    });
}

function updateNickname(nickname) {
    Kakao.API.request({
        url: '/v1/user/update_profile',
        data: {
            properties: {
                nickname
            },
        },
        success: function(response) {
            console.log(response);
        },
        fail: function(error) {
            console.log(error);
        }
    });
}

function initProfileView(kakao_account) {
    const { nickname, profile_image_url } = kakao_account.kakao_account.profile;
    const { id } = kakao_account;

    // document.getElementById('image_profile').setAttribute('src', profile_image_url);
    document.getElementById('kakao_name').textContent = `${nickname}님 로그인 되었습니다.`;
}

// function sendSimpleMessage() {
//   Kakao.Link.createCustomButton({
//     templateId: 47342,
//     container: '#btn_send_message',
//     templateArgs: {
//       title: '이게 설명?',
//       description: '이건 고양이?',
//       THU:
//         'http://mud-kage.kakao.co.kr/dn/NTmhS/btqfEUdFAUf/FjKzkZsnoeE4o19klTOVI1/openlink_640x640s.jpg',
//     }
//   });
// }

// function sendMessage() {
//   Kakao.Link.createDefaultButton({
//     container: '#btn_send_message',
//     objectType: 'feed',
//     content: {
//       title: '디저트 사진',
//       description: '아메리카노, 빵, 케익',
//       imageUrl:
//         'http://mud-kage.kakao.co.kr/dn/NTmhS/btqfEUdFAUf/FjKzkZsnoeE4o19klTOVI1/openlink_640x640s.jpg',
//       link: {
//         mobileWebUrl: 'https://developers.kakao.com',
//         androidExecParams: 'test',
//       },
//     },
//     social: {
//       likeCount: 10,
//       commentCount: 20,
//       sharedCount: 30,
//     },
//     buttons: [
//       {
//         title: '웹으로 이동',
//         link: {
//           mobileWebUrl: 'https://developers.kakao.com',
//         },
//       },
//       {
//         title: '앱으로 이동',
//         link: {
//           mobileWebUrl: 'https://developers.kakao.com',
//         },
//       },
//     ]
//   });
// }