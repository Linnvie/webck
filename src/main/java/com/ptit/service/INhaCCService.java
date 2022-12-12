package com.ptit.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ptit.entity.NhaCungCapEntity;

@Service
public interface INhaCCService {
	public Boolean themNCC(NhaCungCapEntity nccThem);
	public Boolean suaNCC(NhaCungCapEntity nccSua);
	public List<NhaCungCapEntity> findAll();
}
