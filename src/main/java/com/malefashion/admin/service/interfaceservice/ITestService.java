package com.malefashion.admin.service.interfaceservice;

import java.util.List;

import com.malefashion.admin.entity.Student;
import com.malefashion.admin.entity.Test;

public interface ITestService {
	public Test Test(String id) throws Exception;
	public List<Student> GetStudent2 (int age) throws Exception;
	public Student GetStudent(int age) throws Exception;
	public List<Student> findByAgeLessThan(int age) throws Exception;
}
