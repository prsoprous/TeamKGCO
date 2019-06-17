<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>운항 찾기</title>
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script>
function sendData(airFln, std){
	alert(airFln +' : '+ std);
	opener.document.documentFrm.key1.value = airFln;
	opener.document.documentFrm.key2.value = std;
	
	window.close();
}
</script>
<c:set var="diType" value="${param.list }" />
</head>
<body>
	<table>
		<tr>
			<td>No</td>
			<td>Standard</td>
			<td>Arrived</td>
			<td>Start</td>
			<td>City</td>
			<td>Etd</td>
			<td>I/O</td>
			<td>Do/In</td>
			<td>State</td>
			<td>Std</td>
		</tr>

<%-- 		<c:when test="${not empty list}"> --%>
			<c:forEach var="realtime" items="${list}">
				<tr onclick="sendData('${realtime.airFln}','${realtime.std}')">
					<td>${realtime.airFln}</td>
					<td>${realtime.airport}</td>
					<td>${realtime.city}</td>
					<td>${realtime.arrivedEng}</td>
					<td>${realtime.boardingEng}</td>
					<td>${realtime.etd}</td>
					<td>${realtime.io}</td>
					<td>${realtime.line}</td>
					<td>${realtime.rmkEng}</td>
					<td>${realtime.std}</td>
				</tr>
			</c:forEach>
<%-- 		</c:when>
		<c:otherwise>
			<tr>
				<td colspan="10">항목없음</td>
			</tr>
		</c:otherwise> --%>
	</table>
</body>
</html>