package pxu.edu.com.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pxu.edu.com.model.KhachHang;
import pxu.edu.com.model.NhanVien;
import pxu.edu.com.repository.KhachHangRepository;
import pxu.edu.com.repository.NhanVienRepository;

@Service
public class NhanVienService {
	@Autowired
	private NhanVienRepository nhanVienRepository;
	@Transactional
	public List<NhanVien> getlistnhanvien() {
		return nhanVienRepository.findAll();
	}
	@Transactional
	public NhanVien findByTaiKhoanAndPass(String taiKhoan, String matKhau) {
		return nhanVienRepository.findByTaiKhoanAndMatKhau(taiKhoan, matKhau);

	}
}
