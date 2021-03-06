package com.jpaRepository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.entities.Product;

public interface ProductRepository extends JpaRepository<Product, Integer>{
	public List<Product> findAll();
}
