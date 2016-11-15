package com.controllers;

import java.util.List;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.entities.Category;
import com.jpaRepository.CategoryRepository;


@Controller
public class Demo {
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String viewIndex(ModelMap mm)
	{
		//JPARepository

		ApplicationContext context = new ClassPathXmlApplicationContext("classpath*:root-context.xml");
		List<Category> listCategory = (List<Category>) context.getBean(CategoryRepository.class);
		System.out.println("In ra Name list :"+listCategory.get(0).getName());
		mm.put("listCategory", listCategory);
		
		return "home";
	}
}
