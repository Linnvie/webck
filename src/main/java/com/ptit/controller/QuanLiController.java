package com.ptit.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ptit.entity.CTPNKey;
import com.ptit.entity.CTPXSPKey;
import com.ptit.entity.CTSPKey;
import com.ptit.entity.ChiTietPhieuNhapEntity;
import com.ptit.entity.ChiTietPhieuXuatSPEntity;
import com.ptit.entity.ChiTietSanPhamEntity;
import com.ptit.entity.LoaiSanPhamEntity;
import com.ptit.entity.NhaCungCapEntity;
import com.ptit.entity.PhieuNhapEntity;
import com.ptit.entity.PhieuXuatSPEntity;
import com.ptit.entity.SanPhamEntity;
import com.ptit.entity.TaiKhoanEntity;
import com.ptit.entity.VatLieuEntity;
import com.ptit.service.IChiTietPhieuNhapService;
import com.ptit.service.IChiTietPhieuXuatSPService;
import com.ptit.service.IChiTietSPService;
import com.ptit.service.ILoaiSPService;
import com.ptit.service.INhaCCService;
import com.ptit.service.IPhieuNhapService;
import com.ptit.service.IPhieuXuatSPService;
import com.ptit.service.ISanPhamService;
import com.ptit.service.IVatLieuService;


@Controller
@RequestMapping(value="/quan-tri/")
public class QuanLiController {
	
	@Autowired
	private INhaCCService nccService;
	
	@Autowired
	private IPhieuNhapService pnService;
	
	@Autowired
	private IChiTietPhieuNhapService ctpnService;
	
	@Autowired
	private IVatLieuService vlService;
	
	@Autowired
	private ILoaiSPService lspService;
	
	@Autowired
	private ISanPhamService spService;
	
	@Autowired 
	private IChiTietSPService ctspService;
	
	@Autowired
	private IPhieuXuatSPService pxspService;
	
	@Autowired 
	private IChiTietPhieuXuatSPService ctpxService;
	
	@RequestMapping(value="them-vat-lieu", method=RequestMethod.GET)
	public String showVatLieu(ModelMap model) {
		model.addAttribute("vatLieu",new VatLieuEntity());
		return "admin/themvatlieu";
	}
	
	@RequestMapping(value="tao-phieu-nhap", method=RequestMethod.GET)
	public String showPhieuNhap(ModelMap model) {
		model.addAttribute("phieuNhap",new PhieuNhapEntity());
		model.addAttribute("dspn", pnService.findAll());
		return "admin/taophieunhap";
	}
	
	@RequestMapping(value="tao-phieu-nhap", method=RequestMethod.POST)
	public String postPhieuNhap(ModelMap model,HttpServletRequest request, HttpSession ss,
			@ModelAttribute("phieuNhap") PhieuNhapEntity phieuNhap) {
		float money=0;
		phieuNhap.setTongTien(money);
		TaiKhoanEntity user=(TaiKhoanEntity) ss.getAttribute("user");
		phieuNhap.setMaNguoiNhap(user.getQuanLi().getMaQL());
		phieuNhap.setThoiDiemNhap(new Date());
		phieuNhap.setNhaNCC(phieuNhap.getNhaNCC());
		phieuNhap.getNhaNCC().setMaNCC(phieuNhap.getNhaNCC().getMaNCC());
		if(pnService.thempPhieuNhap(phieuNhap)) {
			model.addAttribute("maPhieuNhap", phieuNhap.getMaPhieuNhap());
			model.addAttribute("phieuNhap",phieuNhap);
			return "redirect:/quan-tri/chi-tiet-phieu-nhap{maPhieuNhap}";
		}
		model.addAttribute("message", "Tạo phiếu nhập không thành công!");
		return "admin/taophieunhap";
	}
	@RequestMapping(value="chi-tiet-phieu-nhap{maPhieuNhap}", method=RequestMethod.GET)
	public String showChiTietPhieuNhap(ModelMap model, @PathVariable("maPhieuNhap") Long maPhieuNhap) {
		float money=0;
		model.addAttribute("chiTietPhieuNhap",new ChiTietPhieuNhapEntity());
		model.addAttribute("phieuNhap", pnService.findOneByMaPN(maPhieuNhap));
		List<ChiTietPhieuNhapEntity>listCTPN=ctpnService.findAllByMaPhieuNhap(maPhieuNhap);
		model.addAttribute("listChiTiet", listCTPN);
		if(listCTPN!=null) {
			for(ChiTietPhieuNhapEntity item: listCTPN) {
				money=money+item.getGiaNhap()*item.getSoLuong();
			}
		}
		model.addAttribute("tongTien", money);
		model.addAttribute("btnchitiet","btnAdd");
		return "admin/chitietphieunhap";
	}
	
	@RequestMapping(value="chi-tiet-phieu-nhap{maPhieuNhap}",params="btnAdd", method=RequestMethod.POST)
	public String postChiTietPhieuNhap(ModelMap model, @PathVariable("maPhieuNhap") Long maPhieuNhap,
			HttpServletRequest request, HttpSession ss,
			@ModelAttribute("chiTietPhieuNhap") ChiTietPhieuNhapEntity chiTietPhieuNhap,
			 BindingResult errors) {
//		if(chiTietPhieuNhap.getGiaNhap()<1000 || String.valueOf(chiTietPhieuNhap.getGiaNhap()).matches("-?\\d+(\\.\\d+)?") ) {
//			errors.rejectValue("giaNhap", "chiTietPhieuNhap", "Vui lòng nhập giá hợp lệ!");
//		}
//		if(errors.hasErrors()) {
//			return "admin/chitietphieunhap";
//		}
		float money=0;
		Long maVL=chiTietPhieuNhap.getId().getMaVatLieu();
		VatLieuEntity vl=vlService.findOneByMaVatLieu(maVL);
		vl.setTonKho(vl.getTonKho()+chiTietPhieuNhap.getSoLuong());
		chiTietPhieuNhap.setId(new CTPNKey());
		chiTietPhieuNhap.getId().setMaVatLieu(maVL);
		chiTietPhieuNhap.getId().setMaPhieuNhap(maPhieuNhap);
		List<ChiTietPhieuNhapEntity> listCTPN=ctpnService.findAllByMaPhieuNhap(maPhieuNhap);
		model.addAttribute("btnchitiet","btnAdd");
		if(listCTPN!=null) {
			for(ChiTietPhieuNhapEntity item: listCTPN) {
				money=money+item.getGiaNhap()*item.getSoLuong();
			}
		}else {
			money=0;
		}	
		model.addAttribute("tongTien", money);
		if(ctpnService.themCTPN(chiTietPhieuNhap) && vlService.suaVatLlieu(vl)) {
			model.addAttribute("maPhieuNhap", maPhieuNhap);
			return "redirect:/quan-tri/chi-tiet-phieu-nhap{maPhieuNhap}";
		}

		return "admin/chitietphieunhap";
	}
	
	@RequestMapping(value="chi-tiet-phieu-nhap{item.phieuNhap.maPhieuNhap}/{item.vatLieu.maVatLieu}", params= "linkEdit")
	public String edit(ModelMap model, @ModelAttribute("chiTietPhieuNhap") ChiTietPhieuNhapEntity chiTietPhieuNhap,
			HttpServletRequest request, HttpSession ss,
			@PathVariable("item.phieuNhap.maPhieuNhap") Long maPhieuNhap,
			@PathVariable("item.vatLieu.maVatLieu") Long maVatLieu) {
		ChiTietPhieuNhapEntity ctpn=ctpnService.findOneByMaPhieuNhapAndMaVatLieu(maPhieuNhap, maVatLieu);
		model.addAttribute("slCu",ctpn.getSoLuong());
		model.addAttribute("phieuNhap", pnService.findOneByMaPN(maPhieuNhap));
		model.addAttribute("btnchitiet","btnEdit");	
		model.addAttribute("chiTietPhieuNhap", ctpn);	
		return "admin/chitietphieunhap";
	}
	
	@RequestMapping(value="chi-tiet-phieu-nhap{item.phieuNhap.maPhieuNhap}/{item.vatLieu.maVatLieu}", params= "linkDelete")
	public String delete(ModelMap model,
			HttpServletRequest request, HttpSession ss,
			@PathVariable("item.phieuNhap.maPhieuNhap") Long maPhieuNhap,
			@PathVariable("item.vatLieu.maVatLieu") Long maVatLieu) {
		ChiTietPhieuNhapEntity ctpn=ctpnService.findOneByMaPhieuNhapAndMaVatLieu(maPhieuNhap, maVatLieu);
		VatLieuEntity vl=vlService.findOneByMaVatLieu(ctpn.getId().getMaVatLieu());
		vl.setTonKho(vl.getTonKho()-ctpn.getSoLuong());
		model.addAttribute("maPhieuNhap",maPhieuNhap);
		if(ctpnService.xoaCTPN(ctpn) && vlService.suaVatLlieu(vl)) {
			model.addAttribute("message", "Xóa thành công");
			return "redirect:/quan-tri/chi-tiet-phieu-nhap{maPhieuNhap}";
		}
		model.addAttribute("message", "Thất bại");			
		return "admin/chitietphieunhap";
	}
	
	@RequestMapping(value="chi-tiet-phieu-nhap{maPhieuNhap}/chi-tiet-phieu-nhap{maPhieuNhap}", method=RequestMethod.POST,params="btnEdit")
	public String postChiTietPhieuNhap(ModelMap model, @ModelAttribute("chiTietPhieuNhap") ChiTietPhieuNhapEntity chiTietPhieuNhap,
			HttpServletRequest request, HttpSession ss,
			@PathVariable("maPhieuNhap") Long maPhieuNhap,
			 BindingResult errors) {
		float money=0;
		int slCu=Integer.parseInt(request.getParameter("slCu"));
		VatLieuEntity vl=vlService.findOneByMaVatLieu(chiTietPhieuNhap.getId().getMaVatLieu());
		vl.setTonKho(vl.getTonKho()-slCu+chiTietPhieuNhap.getSoLuong());
		List<ChiTietPhieuNhapEntity> listCTPN=ctpnService.findAllByMaPhieuNhap(maPhieuNhap);
		if(listCTPN!=null) {
			for(ChiTietPhieuNhapEntity item: listCTPN) {
				money=money+item.getGiaNhap()*item.getSoLuong();
			}
		}else {
			money=0;
		}	
		model.addAttribute("tongTien", money);
		if(ctpnService.suaCTPN(chiTietPhieuNhap) && vlService.suaVatLlieu(vl)) {
			model.addAttribute("maPhieuNhap", maPhieuNhap);
			model.addAttribute("message", "edit thành công");
			return "redirect:/quan-tri/chi-tiet-phieu-nhap{maPhieuNhap}";
		}
		model.addAttribute("message", "edit thất bại");
		return "admin/chitietphieunhap";
	}
	
	@RequestMapping(value="ds-san-pham", method=RequestMethod.GET)
	public String showDsSanPham(ModelMap model) {
		model.addAttribute("dssp", spService.findAll());
		return "admin/dssanpham";
	}
	
	@RequestMapping(value="tao-san-pham", method=RequestMethod.GET)
	public String formSanPham(ModelMap model) {
		model.addAttribute("sanPham",new SanPhamEntity());
		model.addAttribute("btnSanPham","btnAdd");
		return "admin/taosanpham";
	}
	
	@RequestMapping(value="tao-san-pham", method=RequestMethod.POST, params="btnAdd")
	public String themSanPham(ModelMap model,HttpServletRequest request, HttpSession ss,
			@ModelAttribute("sanPham") SanPhamEntity sanPham,
			 BindingResult errors) {
		sanPham.setTonKho(0);
		if(spService.themSanPham(sanPham)) {
			model.addAttribute("maSanPham", sanPham.getMaSanPham());
			model.addAttribute("sanPham",sanPham);
			return "redirect:/quan-tri/chi-tiet-sp{maSanPham}";
		}
		return "admin/taosanpham";
	}
	@RequestMapping(value="tao-san-pham{maSanPham}", params= "linkEdit")
	public String editSP(ModelMap model, @PathVariable("maSanPham") Long maSanPham,
			HttpServletRequest request, HttpSession ss,
			@ModelAttribute("sanPham") SanPhamEntity sanPham) {
		model.addAttribute("sanPham", spService.findOneByMaSanPham(maSanPham));
		model.addAttribute("btnSanPham","btnEdit");		
		return "admin/taosanpham";
	}
	
	@RequestMapping(value="tao-san-pham", method=RequestMethod.POST, params="btnEdit")
	public String suaSanPham(ModelMap model,HttpServletRequest request, HttpSession ss,
			@ModelAttribute("sanPham") SanPhamEntity sanPham,
			 BindingResult errors) {
		if(spService.suaSanPham(sanPham)) {
			model.addAttribute("message","Sửa thành công!");
			model.addAttribute("maSanPham", sanPham.getMaSanPham());
			model.addAttribute("sanPham",sanPham);
			return "redirect:/quan-tri/chi-tiet-sp{maSanPham}";
		}
		model.addAttribute("message", "Sửa thất bại!");
		model.addAttribute("dssp", spService.findAll());
		return "admin/dssanpham";
	}
	@RequestMapping(value="chi-tiet-sp{maSanPham}", method=RequestMethod.GET)
	public String showChiTiet(ModelMap model, @PathVariable("maSanPham") Long maSanPham) {
		model.addAttribute("chiTietSP",new ChiTietSanPhamEntity());
		model.addAttribute("sanPham", spService.findOneByMaSanPham(maSanPham));
		model.addAttribute("listSPChiTiet", ctspService.findAllByMaSanPham(maSanPham));
		model.addAttribute("btnchitiet","btnAdd");
		return "admin/chitietsp";
	}
	
	@RequestMapping(value="chi-tiet-sp{maSanPham}",params="btnAdd", method=RequestMethod.POST)
	public String postChiTietSP(ModelMap model, @PathVariable("maSanPham") Long maSanPham,
			HttpServletRequest request, HttpSession ss,
			@ModelAttribute("chiTietSP") ChiTietSanPhamEntity chiTietSP,
			 BindingResult errors) {
		Long maVL=chiTietSP.getId().getMaVatLieu();
		chiTietSP.setId(new CTSPKey());
		chiTietSP.getId().setMaVatLieu(maVL);
		chiTietSP.getId().setMaSanPham(maSanPham);
		if(ctspService.themCTSP(chiTietSP)) {
			model.addAttribute("maSanPham", maSanPham);
			return "redirect:/quan-tri/chi-tiet-sp{maSanPham}";
		}

		return "admin/chitietsp";
	}
	@RequestMapping(value="chi-tiet-sp{maSanPham}/{maVatLieu}", params= "linkEdit")
	public String editSP(ModelMap model, @ModelAttribute("chiTietSP") ChiTietSanPhamEntity chiTietSP,
			HttpServletRequest request, HttpSession ss,
			@PathVariable("maSanPham") Long maSanPham,
			@PathVariable("maVatLieu") Long maVatLieu) {
		ChiTietSanPhamEntity ctpn=ctspService.findOneByMaSanPhamAndMaVatLieu(maSanPham, maVatLieu);
		model.addAttribute("sanPham", spService.findOneByMaSanPham(maSanPham));
		model.addAttribute("btnchitiet","btnEdit");	
		model.addAttribute("chiTietSP", ctpn);	
		return "admin/chitietsp";
	}
	
	@RequestMapping(value="chi-tiet-sp{maSanPham}/chi-tiet-sp{maSanPham}", method=RequestMethod.POST,params="btnEdit")
	public String editCtsp(ModelMap model,@ModelAttribute("chiTietSP") ChiTietSanPhamEntity chiTietSP,
			HttpServletRequest request, HttpSession ss,
			@PathVariable("maSanPham") Long maSanPham,
			 BindingResult errors) {
		if(ctspService.suaCTSP(chiTietSP)) {
			model.addAttribute("maSanPham", maSanPham);
			model.addAttribute("message", "edit thành công");
			return "redirect:/quan-tri/chi-tiet-sp{maSanPham}";
		}
		model.addAttribute("message", "edit thất bại");
		return "admin/chitietsp";
	}
	
	@RequestMapping(value="chi-tiet-sp{maSanPham}/{maVatLieu}", params= "linkDelete")
	public String deleteCTSP(ModelMap model,
			HttpServletRequest request, HttpSession ss,
			@PathVariable("maSanPham") Long maSanPham,
			@PathVariable("maVatLieu") Long maVatLieu) {
		ChiTietSanPhamEntity ctsp=ctspService.findOneByMaSanPhamAndMaVatLieu(maSanPham, maVatLieu);
		model.addAttribute("maSanPham",maSanPham);
		model.addAttribute("sanPham", spService.findOneByMaSanPham(maSanPham));
		if(ctspService.xoaCTSP(ctsp)) {
			model.addAttribute("message", "Xóa thành công");
			return "redirect:/quan-tri/chi-tiet-sp{maSanPham}";
		}
		model.addAttribute("message", "XóaThất bại");			
		return "admin/chitietsp";
		
	}
	
	@RequestMapping(value="tao-phieu-xuat", method=RequestMethod.GET)
	public String showPhieuXuat(ModelMap model) {
		model.addAttribute("phieuXuat",new PhieuXuatSPEntity());
		model.addAttribute("dspx", pxspService.findAll());
		return "admin/taophieuxuat";
	}
	
	@RequestMapping(value="tao-phieu-xuat", method=RequestMethod.POST)
	public String postPhieuXuat(ModelMap model,HttpServletRequest request, HttpSession ss,
			@ModelAttribute("phieuXuat") PhieuXuatSPEntity phieuXuat) {
		phieuXuat.setNgay(new Date());
		if(pxspService.thempPhieuXuat(phieuXuat)) {
			model.addAttribute("maPhieuXuat", phieuXuat.getMaPhieuXuatSP());
			model.addAttribute("phieuXuat",phieuXuat);
			return "redirect:/quan-tri/chi-tiet-phieu-xuat{maPhieuXuat}";
		}
		model.addAttribute("message", "Tạo phiếu xuất không thành công!");
		return "admin/taophieuxuat";
	}
	
	@RequestMapping(value="chi-tiet-phieu-xuat{maPhieuXuat}", method=RequestMethod.GET)
	public String showChiTietPhieuXuat(ModelMap model, @PathVariable("maPhieuXuat") Long maPhieuXuat) {
		model.addAttribute("chiTietPhieuXuat",new ChiTietPhieuXuatSPEntity());
		model.addAttribute("phieuXuat", pxspService.findOneByMaPX(maPhieuXuat));
		if(ctpxService.findAllByMaPhieuXuat(maPhieuXuat)!=null) {
			model.addAttribute("listChiTiet", ctpxService.findAllByMaPhieuXuat(maPhieuXuat));
		}
		model.addAttribute("btnchitiet","btnAdd");
		return "admin/chitietphieuxuat";
	}
	
	@RequestMapping(value="chi-tiet-phieu-xuat{maPhieuXuat}",params="btnAdd", method=RequestMethod.POST)
	public String postChiTietPhieuXuat(ModelMap model, @PathVariable("maPhieuXuat") Long maPhieuXuat,
			HttpServletRequest request, HttpSession ss,
			@ModelAttribute("chiTietPhieuXuat") ChiTietPhieuXuatSPEntity chiTietPhieuXuat,
			 BindingResult errors) {
//		if(chiTietPhieuXuat.getSoLuong()<1 || String.valueOf(chiTietPhieuXuat.getSoLuong()).matches("-?\\d+(\\.\\d+)?") ) {
//			errors.rejectValue("soLuong", "chiTietPhieuXuat", "Vui lòng nhập số lượng hợp lệ!");
//		}
//		if(errors.hasErrors()) {
//			return "admin/chitietphieuxuat";
//		}
		Boolean flag=true;
		Long maSP=chiTietPhieuXuat.getId().getMaSP();
		SanPhamEntity sp=spService.findOneByMaSanPham(maSP);	
		sp.setTonKho(sp.getTonKho()+chiTietPhieuXuat.getSoLuong());
		chiTietPhieuXuat.setId(new CTPXSPKey());
		chiTietPhieuXuat.getId().setMaSP(maSP);;
		chiTietPhieuXuat.getId().setMaPhieuXuatSP(maPhieuXuat);	
		List<ChiTietSanPhamEntity> listCTSP=ctspService.findAllByMaSanPham(maSP);
		if(listCTSP!=null) {
			for(ChiTietSanPhamEntity item: listCTSP) {
				VatLieuEntity vl=vlService.findOneByMaVatLieu(item.getId().getMaVatLieu());
				vl.setTonKho(vl.getTonKho()-item.getSoLuong()*chiTietPhieuXuat.getSoLuong());
				if(!vlService.suaVatLlieu(vl)) {
					flag=false;
					break;
				}
			}
		}
		if(ctpxService.themCTPX(chiTietPhieuXuat) && spService.suaSanPham(sp) && flag) {
			model.addAttribute("maPhieuXuat", maPhieuXuat);
			model.addAttribute("message","Thành công");
			return "redirect:/quan-tri/chi-tiet-phieu-xuat{maPhieuXuat}";
		}
		model.addAttribute("message","Thất bại");
		return "admin/chitietphieuxuat";
	}
	
	@RequestMapping(value="chi-tiet-phieu-xuat{maPhieuXuat}/{maSP}", params= "linkEdit")
	public String edit(ModelMap model,
			@ModelAttribute("chiTietPhieuXuat") ChiTietPhieuXuatSPEntity chiTietPhieuXuat,
			HttpServletRequest request, HttpSession ss,
			@PathVariable("maPhieuXuat") Long maPhieuXuat,
			@PathVariable("maSP") Long maSP) {
		ChiTietPhieuXuatSPEntity ctpx= ctpxService.findOneByMaPhieuXuatAndMaSP(maPhieuXuat, maSP);
		model.addAttribute("slCu",ctpx.getSoLuong());
		model.addAttribute("phieuXuat", pxspService.findOneByMaPX(maPhieuXuat));
		model.addAttribute("btnchitiet","btnEdit");	
		model.addAttribute("chiTietPhieuXuat", ctpx);	
		return "admin/chitietphieuxuat";
	}
	
	@RequestMapping(value="chi-tiet-phieu-xuat{maPhieuXuat}/chi-tiet-phieu-xuat{maPhieuXuat}", method=RequestMethod.POST,params="btnEdit")
	public String postChiTietPhieuXuat(ModelMap model,
			@ModelAttribute("chiTietPhieuXuat") ChiTietPhieuXuatSPEntity chiTietPhieuXuat,
			HttpServletRequest request, HttpSession ss,
			@PathVariable("maPhieuXuat") Long maPhieuXuat,
			 BindingResult errors) {
		Boolean flag=true;
		int slCu=Integer.parseInt(request.getParameter("slCu"));
		SanPhamEntity sp=spService.findOneByMaSanPham(chiTietPhieuXuat.getId().getMaSP());	
		sp.setTonKho(sp.getTonKho()-slCu+chiTietPhieuXuat.getSoLuong());
		List<ChiTietSanPhamEntity> listCTSP=ctspService.findAllByMaSanPham(chiTietPhieuXuat.getId().getMaSP());
		if(listCTSP!=null) {
			for(ChiTietSanPhamEntity item: listCTSP) {
				VatLieuEntity vl=vlService.findOneByMaVatLieu(item.getId().getMaVatLieu());
				vl.setTonKho(vl.getTonKho()+item.getSoLuong()*slCu-item.getSoLuong()*chiTietPhieuXuat.getSoLuong());
				if(!vlService.suaVatLlieu(vl)) {
					flag=false;
					break;
				}
			}
		}
		if(ctpxService.suaCTPX(chiTietPhieuXuat) && spService.suaSanPham(sp) && flag) {
			model.addAttribute("maPhieuXuat", maPhieuXuat);
			model.addAttribute("message", "edit thành công");
			return "redirect:/quan-tri/chi-tiet-phieu-xuat{maPhieuXuat}";
		}
		model.addAttribute("message", "edit thất bại");
		return "admin/chitietphieuxuat";
	}
	
	@RequestMapping(value="chi-tiet-phieu-xuat{maPhieuXuat}/{maSP}", params= "linkDelete")
	public String deleteCTPX(ModelMap model,
			HttpServletRequest request, HttpSession ss,
			@PathVariable("maPhieuXuat") Long maPhieuXuat,
			@PathVariable("maSP") Long maSP) {
		Boolean flag=true;
		ChiTietPhieuXuatSPEntity ctpx= ctpxService.findOneByMaPhieuXuatAndMaSP(maPhieuXuat, maSP);
		SanPhamEntity sp=spService.findOneByMaSanPham(maSP);	
		sp.setTonKho(sp.getTonKho()-ctpx.getSoLuong());
		List<ChiTietSanPhamEntity> listCTSP=ctspService.findAllByMaSanPham(maSP);
		if(listCTSP!=null) {
			for(ChiTietSanPhamEntity item: listCTSP) {
				VatLieuEntity vl=vlService.findOneByMaVatLieu(item.getId().getMaVatLieu());
				vl.setTonKho(vl.getTonKho()+item.getSoLuong()*ctpx.getSoLuong());
				if(!vlService.suaVatLlieu(vl)) {
					flag=false;
					break;
				}
			}
		}
		if(ctpxService.xoaCTPX(ctpx) && spService.suaSanPham(sp) && flag) {
			model.addAttribute("message", "Xóa thành công");
			return "redirect:/quan-tri/chi-tiet-phieu-xuat{maPhieuXuat}";
		}
		model.addAttribute("message", "Thất bại");			
		return "admin/chitietphieunhap";
	}
	
	@ModelAttribute("ListVatLieu")
	public List<VatLieuEntity> findAllVL() {
		return vlService.findAll();	
	}
	
	@ModelAttribute("ListNCC")
	public List<NhaCungCapEntity> findAllNCC() {
		return nccService.findAll();	
	}
	
	@ModelAttribute("ListLoaiSP")
	public List<LoaiSanPhamEntity> findAllLSP() {
		return lspService.findAll();	
	}
	
	@ModelAttribute("ListSP")
	public List<SanPhamEntity> findAllSP() {
		return spService.findAll();	
	}
}
