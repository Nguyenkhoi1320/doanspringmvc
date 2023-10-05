package pxu.edu.com.model;

import java.math.BigDecimal;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "nhanvien")
public class NhanVien {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MaNhanVien")
	private Long maNhanVien;

	@Column(name = "HoVaTenDem")
	private String hoVaTenDem;

	@Column(name = "ChucVu")
	private String chucVu;

	@Column(name = "Luong")
	private BigDecimal luong;

	@Column(name = "TaiKhoan")
	private String taiKhoan;

	// Trường mật khẩu cho nhân viên
	@Column(name = "MatKhau")
	private String matKhau;

	@Column(name = "Image")
	private String image;

	public Long getMaNhanVien() {
		return maNhanVien;
	}

	public NhanVien(Long maNhanVien, String hoVaTenDem, String chucVu, BigDecimal luong, String taiKhoan,
			String matKhau, String image) {
		super();
		this.maNhanVien = maNhanVien;
		this.hoVaTenDem = hoVaTenDem;
		this.chucVu = chucVu;
		this.luong = luong;
		this.taiKhoan = taiKhoan;
		this.matKhau = matKhau;
		this.image = image;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public void setMaNhanVien(Long maNhanVien) {
		this.maNhanVien = maNhanVien;
	}

	public String getHoVaTenDem() {
		return hoVaTenDem;
	}

	public void setHoVaTenDem(String hoVaTenDem) {
		this.hoVaTenDem = hoVaTenDem;
	}

	public String getChucVu() {
		return chucVu;
	}

	public void setChucVu(String chucVu) {
		this.chucVu = chucVu;
	}

	public BigDecimal getLuong() {
		return luong;
	}

	public void setLuong(BigDecimal luong) {
		this.luong = luong;
	}

	public String getTaiKhoan() {
		return taiKhoan;
	}

	public void setTaiKhoan(String taiKhoan) {
this.taiKhoan = taiKhoan;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	public NhanVien() {
		super();
	}

}