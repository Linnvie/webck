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
	<form:form action="tao-san-pham" id="formLogin" method="post"
		modelAttribute="sanPham">
		<div class="form_group">
			<label>Phân loại sản phẩm</label>
			<form:select path="loaiSP.maLoaiSP" items="${ListLoaiSP}"
			itemValue="maLoaiSP" itemLabel="tenLoaiSP"/>
		</div>
		
		<div class="form-group">
			<label>Tên sản phẩm</label>
			<form:input path="tenSanPham" type="text" class="form-control"
				id="userName" placeholder="Tên sản phẩm" />
		</div>
		<div class="form-group">
			<label>Gía gốc</label>
			<form:input path="giaGoc" type="text" class="form-control"
				id="userName" placeholder="Gía gốc" />
		</div>
		<div class="form-group">
			<label>Gía bán</label>
			<form:input path="giaBan" type="text" class="form-control"
				id="userName" placeholder="Gía bán" />
		</div>
		<div class="form-group">
			<label>Mô tả</label>
			<form:input path="moTa" type="text" class="form-control"
				id="userName" placeholder="Mô tả" />
		</div>
		<div class="form-group">
			<label>Hình ảnh</label>
			<form:input path="hinhAnh" type="text" class="form-control"
				id="userName" placeholder="Hình ảnh" />
		</div>
		<input name="maSanPham" hidden="true" value="${sanPham.maSanPham}">
	
<%-- 		<c:forEach var="ctsp" items="${sanPham.CTSPList}"> --%>
<!-- 			<div class="form-group"> -->
<!-- 			<label>Vật liệu </label> -->
<%-- 			<form:select path="ctsp.id.maVatLieu" items="${ListVatLieu}" --%>
<%-- 			itemValue="maVatLieu" itemLabel="tenVatLieu"/>  --%>
<!-- 		</div> -->
<!-- 		<div class="form-group"> -->
<%-- 			<form:input path="ctsp.soLuong" type="number" class="form-control" --%>
<%-- 				id="userName" placeholder="" /> --%>
<!-- 		</div> -->
<%-- 		</c:forEach> --%>
		
		
		
<%-- 		<c:set var="count" value="0"></c:set> --%>
<!-- 		<div class="form-group"> -->
<!-- 			<label>Vật liệu </label> -->
<%-- 			<form:select path="CTSPList[${count}].id.maVatLieu" items="${ListVatLieu}" --%>
<%-- 			itemValue="maVatLieu" itemLabel="tenVatLieu"/>  --%>
<!-- 		</div> -->
<!-- 		<div class="form-group"> -->
<%-- 			<form:input path="CTSPList[${count}].soLuong" type="number" class="form-control" --%>
<%-- 				id="userName" placeholder="" /> --%>
<!-- 		</div> -->
		
		
		
		
		<button name="${btnSanPham}" class="btn btn-primary">Lưu sản phẩm</button>
	</form:form>
	
	<a href="quan-tri/chi-tiet-sp{sanPham.maSanPham}"></a>
	
	<table class="table table-hover">
</body>
</html>