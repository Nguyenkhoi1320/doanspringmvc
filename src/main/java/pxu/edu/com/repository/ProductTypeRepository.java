package pxu.edu.com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import pxu.edu.com.model.ProductType;

@Repository
public interface ProductTypeRepository extends JpaRepository<ProductType, Long>{

}
