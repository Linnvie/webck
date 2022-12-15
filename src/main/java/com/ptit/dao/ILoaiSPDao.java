package com.ptit.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ptit.entity.LoaiSanPhamEntity;

@Repository
public interface ILoaiSPDao {
	public Boolean themLSP(LoaiSanPhamEntity lspThem);
	public Boolean suaLSP(LoaiSanPhamEntity lspSua);
	public List<LoaiSanPhamEntity> findAll();

}
