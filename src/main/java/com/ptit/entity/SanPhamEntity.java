package com.ptit.entity;

import java.util.ArrayList;
import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="SanPham")
public class SanPhamEntity {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="MaSanPham")
	private Long maSanPham;
	
	@Column(name="TenSanPham")
	private String tenSanPham;
	
	@Column(name="GiaGoc")
	private float giaGoc;
	
	@Column(name="GiaBan")
	private float giaBan;
	
	@Column(name="MoTa")
	private String moTa;
	
	@Column(name="HinhAnh")
	private String hinhAnh;
	
	@Column(name="TonKho")
	private int tonKho;
	
	@ManyToOne
    @JoinColumn(name = "MaLoaiSP")
	private LoaiSanPhamEntity loaiSP;
	
	@OneToMany(mappedBy="sanPham", fetch=FetchType.EAGER)
	private Collection<ChiTietSanPhamEntity> CTSPList = new ArrayList<>();
	
	@OneToMany(mappedBy="sanPham")
	private Collection<ChiTietPhieuXuatSPEntity> listCTPX;

	public Long getMaSanPham() {
		return maSanPham;
	}

	public void setMaSanPham(Long maSanPham) {
		this.maSanPham = maSanPham;
	}

	public String getTenSanPham() {
		return tenSanPham;
	}

	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}

	public float getGiaGoc() {
		return giaGoc;
	}

	public void setGiaGoc(float giaGoc) {
		this.giaGoc = giaGoc;
	}

	public float getGiaBan() {
		return giaBan;
	}

	public void setGiaBan(float giaBan) {
		this.giaBan = giaBan;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public String getHinhAnh() {
		return hinhAnh;
	}

	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}

	public int getTonKho() {
		return tonKho;
	}

	public void setTonKho(int tonKho) {
		this.tonKho = tonKho;
	}

	public LoaiSanPhamEntity getLoaiSP() {
		return loaiSP;
	}

	public void setLoaiSP(LoaiSanPhamEntity loaiSP) {
		this.loaiSP = loaiSP;
	}

	public Collection<ChiTietSanPhamEntity> getCTSPList() {
		return CTSPList;
	}

	public void setCTSPList(Collection<ChiTietSanPhamEntity> cTSPList) {
		CTSPList = cTSPList;
	}

	
	
	
	
}
