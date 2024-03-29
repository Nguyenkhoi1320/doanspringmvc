package pxu.edu.com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import pxu.edu.com.model.KhachHang;

@Repository("khachHangRepository")

public interface KhachHangRepository extends JpaRepository<KhachHang, Long> {
	@Query("SELECT k FROM KhachHang k ORDER BY k.maKhachHang DESC")
	KhachHang findLastKhachHangWithLimit();

	KhachHang findByTaiKhoanAndMatKhau(String taikhoan, String matkhau);
}
