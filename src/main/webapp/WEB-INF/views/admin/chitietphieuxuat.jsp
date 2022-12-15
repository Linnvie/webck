<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${message}
<h3>${maPhieuXuat}</h3>
hello
<table class="table table-hover">
<tr>
	<th>Mã phiếu xuất</th>
	<th>Ngày</th>

</tr>
<tr>
	<td>${phieuXuat.maPhieuXuatSP}</td>
	<td>${phieuXuat.ngay}</td>
</tr>
</table>

<h2>Chi tiết phiếu xuất</h2>
<form:form action="chi-tiet-phieu-xuat${phieuXuat.maPhieuXuatSP}" id="formLogin" method="post"
		modelAttribute="chiTietPhieuXuat">
		<div class="form_group">
			<label>Sản Phẩm </label>
			<form:select path="id.maSP" items="${ListSP}"
			itemValue="maSanPham" itemLabel="tenSanPham"/> 
		</div>
		<div class="form-group">
		<label>Số lượng </label>
			<form:input path="soLuong" type="text" class="form-control"
				id="userName" placeholder="Số lượng" />
		</div>
		<input name="slCu" hidden="true" value="${slCu}">
		<input name="id.maPhieuXuatSP" hidden="true" value="${maPhieuXuat}">
		<button name="${btnchitiet}"  class="btn btn-primary">Lưu</button>
			
	</form:form>
<a href="/quan-tri/trang-chu">Hoàn tất</a>
<table class="table table-hover">
<tr>
	<th>Sản phẩm</th>
	<th>Số lương</th>
	<th></th>
	<th></th>
</tr>
<c:forEach var="item" items="${listChiTiet}">
<tr>
	<td>${item.sanPham.tenSanPham}</td>
	<td>${item.soLuong }</td>
	<td><a href="chi-tiet-phieu-xuat${item.phieuXuatSP.maPhieuXuatSP}/${item.sanPham.maSanPham}?linkEdit">Chỉnh sửa</a></td>
	<td><a href="chi-tiet-phieu-xuat${item.phieuXuatSP.maPhieuXuatSP}/${item.sanPham.maSanPham}?linkDelete">Xóa</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>