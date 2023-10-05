package pxu.edu.com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pxu.edu.com.model.NhanVien;
import pxu.edu.com.service.NhanVienService;
@Controller
@RequestMapping("/nhanvien")
public class NhanvienController {
	@Autowired
	private NhanVienService NhanVienService;

	@GetMapping("/home")
	public String showNhanVien(Model model) {
		List<NhanVien> nhanvien = NhanVienService.getlistnhanvien();
		model.addAttribute("nhanvien", nhanvien);
		return "form_nhanvien";
	}
}
