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
	
	<table class="table table-hover">
<tr>
	<th>Mã sản phẩm</th>
	<th>Phân loại sản phẩm</th>
	<th>Tên sản phẩm</th>
	<th>Gía gốc</th>
	<th>Gía bán</th>
	<th></th>
	<th></th>
</tr>
<c:forEach var="item" items="${dssp}">
<tr>
	<td>${item.maSanPham}</td>
	<td>${item.loaiSP.tenLoaiSP}</td>
	<td>${item.tenSanPham}</td>
	<td>${item.giaGoc}</td>
	<td>${item.giaBan}</td>
	<td><a href="tao-san-pham${item.maSanPham}?linkEdit">Chi tiết</a></td>
	<td><a href="quan-tri/edit/.htm?linkEdit">Edit</a></td>
</tr>
</c:forEach>


</table>

<a href="tao-san-pham">Thêm sản phẩm mới</a>
	
</body>
</html>