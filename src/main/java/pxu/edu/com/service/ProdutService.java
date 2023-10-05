package pxu.edu.com.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pxu.edu.com.model.Product;
import pxu.edu.com.model.ProductType;
import pxu.edu.com.repository.ProductRepository;

@Service
public class ProdutService {
	@Autowired
	private ProductRepository productRepository;

	@Transactional
	public List<Product> getproduct() {
		return productRepository.findAll();
	}

	@Transactional
	public void saveproduct(Product product) {
		productRepository.save(product);
	}

	@Transactional
	public Optional<Product> getProduct(Long theId) {
		return productRepository.findById(theId);
	}

	@Transactional
	public void deleteproduct(Long theId) {
		productRepository.deleteById(theId);
	}
}
