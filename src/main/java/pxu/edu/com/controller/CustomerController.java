package pxu.edu.com.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pxu.edu.com.model.KhachHang;
import pxu.edu.com.model.NhanVien;
import pxu.edu.com.model.Product;
import pxu.edu.com.service.KhachHangService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	@Autowired
	private KhachHangService khachHangService;

	@GetMapping("/home")
	public String showKhoaHoc(Model model) {
		List<KhachHang> KhachHang = khachHangService.getlistkhachhang();
		model.addAttribute("KhachHang", KhachHang);
		return "form_user";
	}
	
	@GetMapping("/updateform")
	public String updateform(@RequestParam("id") Long id,Model model) {
		Optional<KhachHang> khachHangs = khachHangService.finBuyID(id);
		model.addAttribute("khachHangs", khachHangs);
		return "update_customer";
	}
	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("khachhang") KhachHang khachhang) {
		khachHangService.savecustomer(khachhang);
		return "redirect:/customer/home";
	}
	@GetMapping("/deletecustomer")
	public String deleteCustomer(@RequestParam("customerID") Long theId) {
		khachHangService.deletecustomer(theId);
		return "redirect:/customer/home";
	}

}

