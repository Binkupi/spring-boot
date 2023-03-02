package com.malefashion.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.malefashion.admin.dao.interfacedao.ITestDao;
import com.malefashion.admin.dao.interfacedao.ITestJPADao;
import com.malefashion.admin.entity.Student;
import com.malefashion.admin.entity.Test;
import com.malefashion.admin.service.interfaceservice.ITestService;

@Service
public class TestService implements ITestService{
	
	@Autowired
	ITestDao testDao;
	@Autowired
	ITestJPADao testJPADao;
	@Override
	public Test Test(String id) throws Exception {
		Test test = testDao.Test(id);
		try {
			System.out.println("test: " + test.getName());
			
		}catch(Exception e) {
		}
		return test;
	}
	
	
	@Override
//	public List<Student> GetStudent (int age) throws Exception{
	public Student GetStudent(int age) throws Exception{
		Student student = testDao.GetStudent(age);
		return student;
	}
	
	@Override
	public List<Student> GetStudent2 (int age) throws Exception{
		List<Student> student = testDao.GetStudent2(age);
		return student;
	}
	
	@Override
	public List<Student> findByAgeLessThan(int age) throws Exception{
		List<Student> student = testJPADao.findAll();
		return student;
	}
	
}
