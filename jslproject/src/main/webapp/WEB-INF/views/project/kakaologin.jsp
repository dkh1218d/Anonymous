<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<script>
function send(){
	kakaoInfo.submit();
}

	
</script>
<body onload="javascript:send()">
<form name="kakaoInfo" method="post" action="/kakaologin2">
<input type="hidden" name="kakaoId" value="${id}">
<input type="hidden" name="kakaoEmail" value="${email}">
<input type="hidden" name="kakaoName" value="${name}">
</form>
</body>