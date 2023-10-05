package pxu.edu.com.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pxu.edu.com.model.KhachHang;
import pxu.edu.com.model.Product;
import pxu.edu.com.model.ProductType;
import pxu.edu.com.repository.KhachHangRepository;

@Service
public class KhachHangService {
	@Autowired
	private KhachHangRepository khachHangRepository;

	@Transactional
	public List<KhachHang> getlistkhachhang() {
		return khachHangRepository.findAll();
	}

	@Transactional
	public KhachHang findByTenDangNhapAndMatKhau(String taiKhoan, String matKhau) {
		return khachHangRepository.findByTaiKhoanAndMatKhau(taiKhoan, matKhau);

	}

	@Transactional
	public Optional<KhachHang> finBuyID(Long id) {
		return khachHangRepository.findById(id);

	}
	@Transactional
	public void savecustomer(KhachHang khachhang) {
		khachHangRepository.save(khachhang);
	}
	@Transactional
	public void deletecustomer(Long theId) {
		khachHangRepository.deleteById(theId);
	}
}
