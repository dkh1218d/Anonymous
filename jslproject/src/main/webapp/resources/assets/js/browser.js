var agent = navigator.userAgent.toLowerCase();

if ( (navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) || (agent.indexOf("msie") != -1) ) {

  alert("저희 홈페이지는  Microsoft 사 Internet Explorer를 지원하지 않습니다.");
  window.location.assign('https://www.google.com/intl/ko/chrome/');
}
