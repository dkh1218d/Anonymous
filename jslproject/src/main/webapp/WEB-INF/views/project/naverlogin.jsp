<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script src="/resources/assets/js/constants.js">
</script>
<script>
	naverLogin2.init();
	
	window.addEventListener('load', function () {
		naverLogin2.getLoginStatus(function (status) {
			if (status) {
				document.getElementById("naverEmail").value = naverLogin2.user.getEmail();
				document.getElementById("naverId").value = naverLogin2.user.getId();
				document.getElementById("naverName").value = naverLogin2.user.getName();
				naverInfo.submit();

			} else {
				alert("error");
				history.back();
			}
		});
	});
	
</script>

<form name="naverInfo" method="post" action="/naverlogin2">
<input type="hidden" id="naverId" name="naverId" value="">
<input type="hidden" id="naverEmail" name="naverEmail" value="">
<input type="hidden" id="naverName" name="naverName" value="">
</form>
</body>