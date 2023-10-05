package pxu.edu.com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pxu.edu.com.model.KhachHang;
import pxu.edu.com.model.NhanVien;
import pxu.edu.com.service.KhachHangService;
import pxu.edu.com.service.NhanVienService;
@Controller
@RequestMapping("/login")
public class LoginController {
	@Autowired
	private NhanVienService nhanVienService;

	@Autowired
	private KhachHangService khachHangService;
	@GetMapping("/login")
	public String login(Model model) {
		NhanVien nhanVien = new NhanVien();
		model.addAttribute("nhanVien", nhanVien);
		return "loginform";
	}
	@PostMapping("/loginn")
	public String processLogin(@RequestParam String taiKhoan, @RequestParam String matKhau, Model model,
			HttpSession session) {
		NhanVien nhanVien = nhanVienService.findByTaiKhoanAndPass(taiKhoan, matKhau);
		if (nhanVien == null) {
			KhachHang khachHang = khachHangService.findByTenDangNhapAndMatKhau(taiKhoan, matKhau);
			if (khachHang != null) {
				return "redirect:/product/homepage";
			}
		} else {
			session.setAttribute("loggedInUser", taiKhoan);
			session.setAttribute("fullName", nhanVien.getMaNhanVien());
			session.setAttribute("namee", nhanVien.getHoVaTenDem());
			session.setAttribute("image", nhanVien.getImage());
			return "redirect:/product/listProduct";
		}
		model.addAttribute("error", true);
		return "loginform";
	}
	@GetMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.invalidate();
		}
		return "redirect:/login/login";
	}
}
