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
	<form:form action="tao-phieu-nhap" id="formLogin" method="post"
		modelAttribute="phieuNhap">
		<div class="form_group">
			<label>Nhà cung cấp</label>>
			<form:select path="nhaNCC.maNCC" items="${ListNCC}"
			itemValue="maNCC" itemLabel="tenNCC"/>
		</div>		
		
		<button type="submit" class="btn btn-primary">Tạo phiếu nhâp mới</button>
	</form:form>
	
	<table class="table table-hover">
<tr>
	<th>Mã phiếu nhập</th>
	<th>Mã người nhập</th>
	<th>Thời điểm nhập</th>
	<th>Nhà cung cấp</th>
	<th></th>
	<th></th>
	<th></th>
</tr>
<c:forEach var="item" items="${dspn}">
<tr>
	<td>${item.maPhieuNhap}</td>
	<td>${item.maNguoiNhap}</td>
	<td>${item.thoiDiemNhap}</td>
	<td>${item.nhaNCC.tenNCC}</td>
	<td><a href="chi-tiet-phieu-nhap${item.maPhieuNhap}">Chi tiết</a></td>
	<td><a href="user/delete/.htm?linkDelete">Delete</a></td>
</tr>
</c:forEach>


</table>
	
</body>
</html>