package pxu.edu.com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import pxu.edu.com.model.NhanVien;

@Repository("nhanVienRepository")
public interface NhanVienRepository extends JpaRepository<NhanVien, Long> {
	NhanVien findByTaiKhoanAndMatKhau(String taiKhoan,String matKhau);

}
