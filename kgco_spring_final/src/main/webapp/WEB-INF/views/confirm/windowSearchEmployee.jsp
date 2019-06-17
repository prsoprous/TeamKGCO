<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>운항 찾기</title>
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script>
	function sendData(eId,eclass) {
		if(eclass == '부장') alert('직급이 부장이면 부서이동이 불가능 합니다.');
		else{
			var check = eId.substring(0,2);
			if(check =="FA"){
				alert('FA or OP do not have gate');
			}else if(check =="OP"){
				alert('FA or OP do not have gate');
			}
			else{
				opener.document.documentFrm.key1.value = eId;
				window.close();
			}

		}
	}
</script>
</head>
<body>
	<div
		style="overflow: scroll; width: 600px; height: 500px; margin-top: 50px">
		<table data-vertable="ver5" id="tableList">
			<thead>
				<tr class="row100 head">
					<th>직원 아이디</th>
					<th>직급</th>
					<th>이름</th>
					<th>편성게이트</th>
					<th>업무상황</th>
					<th>스케줄</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="searchList" items="${list}">
					<tr onclick="sendData('${searchList.EId}','${searchList.EClass }')">
						<td>${searchList.EId}</td>
						<td>${searchList.EClass }</td>
						<td>${searchList.EName }</td>
						<td>${searchList.EGate }</td>
						<td>${searchList.EState }</td>
						<td>${searchList.EGroup }</td>
					</tr>
				</c:forEach>


			</tbody>
		</table>
	</div>
</body>
</html>