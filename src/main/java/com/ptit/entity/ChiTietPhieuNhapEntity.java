package com.ptit.entity;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="ChiTietPhieuNhap")
public class ChiTietPhieuNhapEntity {
	@EmbeddedId
	private CTPNKey id;
	
	@ManyToOne
	@JoinColumn(name="MaPhieuNhap",insertable = false, updatable = false)
	private PhieuNhapEntity phieuNhap;
	
	@ManyToOne
	@JoinColumn(name="MaVatLieu",insertable = false, updatable = false)
	private VatLieuEntity vatLieu;
	
	@Column(name="SoLuong")
	private int soLuong;
	
	@Column(name="GiaNhap")
	private float giaNhap;

	public CTPNKey getId() {
		return id;
	}

	public void setId(CTPNKey id) {
		this.id = id;
	}

	public PhieuNhapEntity getPhieuNhap() {
		return phieuNhap;
	}

	public void setPhieuNhap(PhieuNhapEntity phieuNhap) {
		this.phieuNhap = phieuNhap;
	}

	public VatLieuEntity getVatLieu() {
		return vatLieu;
	}

	public void setVatLieu(VatLieuEntity vatLieu) {
		this.vatLieu = vatLieu;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public float getGiaNhap() {
		return giaNhap;
	}

	public void setGiaNhap(float giaNhap) {
		this.giaNhap = giaNhap;
	}
	
	
	
}
