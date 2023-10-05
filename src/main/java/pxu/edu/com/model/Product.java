package pxu.edu.com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;

	@Column(name = "name")
	private String name;

	@Column(name = "describes")
	private String describes;
	
	@Column(name = "price")
	private float price;

	@Column(name = "image")
	private String image;
	
	@Column(name = "image1")
	private String image1;
	


	public Product(Long id, String name, String describes, float price, String image, String image1,
			ProductType productType) {
		super();
		this.id = id;
		this.name = name;
		this.describes = describes;
		this.price = price;
		this.image = image;
		this.image1 = image1;
		this.productType = productType;
	}

	public String getDescribes() {
		return describes;
	}

	public void setDescribes(String describes) {
		this.describes = describes;
	}




	@ManyToOne
	@JoinColumn(name = "type_id")
	private ProductType productType;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public ProductType getProductType() {
		return productType;
	}

	public void setProductType(ProductType productType) {
		this.productType = productType;
	}

	public String getImage1() {
		return image1;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
	}

	
	

	public Product() {
		super();
	}

}
