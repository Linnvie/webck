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
<table class="table table-hover">
<tr>
	<th>Mã sản phẩm</th>
	<th>Phân loại sản phẩm</th>
	<th>Tên sản phẩm</th>
	<th>Gía gốc</th>
	<th>Gía bán</th>
</tr>
<tr>
	<td>${sanPham.maSanPham}</td>
	<td>${sanPham.loaiSP.tenLoaiSP}</td>
	<td>${sanPham.tenSanPham}</td>
	<td><fmt:setLocale value="vi_VN" /> <fmt:formatNumber value="${sanPham.giaGoc}" type="currency"
													currencySymbol="vnđ" /></td>
	<td><fmt:setLocale value="vi_VN" /> <fmt:formatNumber value="${sanPham.giaBan}" type="currency"
													currencySymbol="vnđ" /></td>
</tr>
</table>

<h2>Chi tiết sản phẩm</h2>
<form:form action="chi-tiet-sp${sanPham.maSanPham}" id="formLogin" method="post"
		modelAttribute="chiTietSP">
		<div class="form_group">
			<label>Vật liệu </label>
			<form:select path="id.maVatLieu" items="${ListVatLieu}"
			itemValue="maVatLieu" itemLabel="tenVatLieu"/> 
		</div>
		<div class="form-group">
		<label>Số lượng </label>
			<form:input path="soLuong" type="text" class="form-control"
				id="userName" placeholder="Số lượng" />
		</div>
		<input name="id.maSanPham" hidden="true" value="${sanPham.maSanPham}">
		<button name="${btnchitiet}"  class="btn btn-primary">Lưu</button>
			
	</form:form>

<table class="table table-hover">
<tr>
	<th>Vật liệu</th>
	<th>Số lương</th>
	<th></th>
	<th></th>
</tr>
<c:forEach var="item" items="${listSPChiTiet}">
<tr>
	<td>${item.vatLieu.tenVatLieu}</td>
	<td>${item.soLuong }</td>
	<td><a href="chi-tiet-sp${item.sanPham.maSanPham}/${item.vatLieu.maVatLieu}?linkEdit">Chỉnh sửa</a></td>
	<td><a href="chi-tiet-sp${item.sanPham.maSanPham}/${item.vatLieu.maVatLieu}?linkDelete">Xóa</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>