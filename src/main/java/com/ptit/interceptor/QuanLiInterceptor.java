package com.ptit.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.ptit.entity.TaiKhoanEntity;

public class QuanLiInterceptor extends HandlerInterceptorAdapter{
@Override
public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
		throws Exception {
//	HttpSession session = request.getSession();
//	if(session.getAttribute("user") == null){
//		session.setAttribute("message", "Vui lòng đăng nhập!");
//		response.sendRedirect(request.getContextPath() + "/dang-nhap");
//		return false;
//	}else {	
//		TaiKhoanEntity taikhoan = (TaiKhoanEntity) session.getAttribute("user");
//		if(!taikhoan.getQuyen().getMaQuyen().equals("QL")) {			
//			response.sendRedirect(request.getContextPath() + "/dang-nhap");
//			session.setAttribute("message", "Vui lòng đăng nhập bằng tài khoản user để truy cập");
//			return false;
//		}
//		return true;	
//	}	
	return true;
	}
}
