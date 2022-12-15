<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${message}
	<form:form action="tao-phieu-xuat" id="formLogin" method="post"
		modelAttribute="phieuXuat">
		<button type="submit" class="btn btn-primary">Tạo phiếu xuất mới</button>
	</form:form>
	
	<table class="table table-hover">
<tr>
	<th>Mã phiếu xuất</th>
	<th>Ngày</th>
	<th></th>
</tr>
<c:forEach var="item" items="${dspx}">
<tr>
	<td>${item.maPhieuXuatSP}</td>
	<td>${item.ngay}</td>
	<td><a href="chi-tiet-phieu-xuat${item.maPhieuXuatSP}">Chi tiết</a></td>
</tr>
</c:forEach>


</table>
	
</body>
</html>