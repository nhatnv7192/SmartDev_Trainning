package com.jpaRepository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.entities.Category;

public interface CategoryRepository  extends JpaRepository<Category, Integer>{
	public List<Category> findAll();
}
