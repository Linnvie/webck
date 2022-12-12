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
<h3>${maPhieuNhap}</h3>
hello
<table class="table table-hover">
<tr>
	<th>Mã phiếu nhập</th>
	<th>Mã người nhập</th>
	<th>Thời điểm nhập</th>
	<th>Nhà cung cấp</th>
</tr>
<tr>
	<td>${phieuNhap.maPhieuNhap}</td>
	<td>${phieuNhap.maNguoiNhap}</td>
	<td>${phieuNhap.thoiDiemNhap}</td>
	<td>${phieuNhap.nhaNCC.tenNCC}</td>
</tr>
</table>

<h2>Chi tiết phiếu nhập</h2>
<form:form action="chi-tiet-phieu-nhap${phieuNhap.maPhieuNhap}" id="formLogin" method="post"
		modelAttribute="chiTietPhieuNhap">
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
		
		<div class="form-group">
		<label>Gía nhập</label>
			<form:input path="giaNhap" type="text" class="form-control"
				id="userName" placeholder="giaNhap"/>
				<form:errors path="giaNhap" cssClass="text-danger"/>
						<p class="text-danger" id="email.errors"></p>
		</div>
		<input name="slCu" hidden="true" value="${slCu}">
		<input name="id.maPhieuNhap" hidden="true" value="${phieuNhap.maPhieuNhap}">
		<button name="${btnchitiet}"  class="btn btn-primary">Lưu</button>
			
	</form:form>
<a href="/quan-tri/trang-chu">Hoàn tất</a>
<table class="table table-hover">
<tr>
	<th>Vật liệu</th>
	<th>Số lương</th>
	<th>Gía nhập</th>
	<th></th>
	<th></th>
</tr>
<c:forEach var="item" items="${listChiTiet}">
<tr>
	<td>${item.vatLieu.tenVatLieu}</td>
	<td>${item.soLuong }</td>
	<td> <fmt:formatNumber value="${item.giaNhap }" type="currency" currencySymbol="vnđ" /></td>
	<td><a href="chi-tiet-phieu-nhap${item.phieuNhap.maPhieuNhap}/${item.vatLieu.maVatLieu}?linkEdit">Edit</a></td>
	<td><a href="chi-tiet-phieu-nhap${item.phieuNhap.maPhieuNhap}/${item.vatLieu.maVatLieu}?linkDelete">Delete</a></td>
</tr>
</c:forEach>
</table>
<h2>Tổng tiền:<fmt:setLocale value="vi_VN" /> <fmt:formatNumber value="${tongTien}" type="currency"
													currencySymbol="vnđ" /> </h2>
</body>
</html>