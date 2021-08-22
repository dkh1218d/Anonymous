<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<script>
function send(){
	googleInfo.submit();
}

</script>
<body onload="javascript:send()">
<form name="googleInfo" method="post" action="/googlelogin2">
<input type="hidden" name="id_token" value="${id_token}">
<%-- <input type="hidden" name="googleEmail" value="${email}">
<input type="hidden" name="googleName" value="${name}"> --%>
</form>
</body>