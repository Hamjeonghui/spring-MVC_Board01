<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>메인 페이지</h1>

	<a href="logout.do">LOGOUT</a>
	
	<hr>
	
	<form action="main.do" method="post">
		<table border="1">
			<tr>
				<td><select name="searchCondition">
						<option value="title">제목</option>
						<option value="writer">작성자</option>
						<option value="content">내용</option>
				</select> <input type="text" name="searchKeyword"> <input
					type="submit" value="검색"></td>
			</tr>
		</table>
	</form>
	
	<hr>
	
	<table border="1">
		<tr>
			<th>글 번호</th>
			<th>글 제목</th>
			<th>글 작성자</th>
		</tr>
		<c:forEach var="v" items="${datas}">
		<tr>
			<td><a href="board.do?bid=${v.bid}">${v.bid}</a></td>
			<td>${v.title}</td>
			<td>${v.writer}</td>
		</tr>
		</c:forEach>
	</table>
	
	<hr>
	
	<a href="insertBoard.jsp">글 등록</a>

</body>
</html>