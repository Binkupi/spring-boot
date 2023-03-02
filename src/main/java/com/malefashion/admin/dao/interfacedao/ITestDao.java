package com.malefashion.admin.dao.interfacedao;
import java.util.List;

import com.malefashion.admin.entity.Student;
import com.malefashion.admin.entity.Test;

public interface ITestDao {
	public Test Test(String id) throws Exception;
	public List<Student> GetStudent2(int age) throws Exception;
	public Student GetStudent(int age) throws Exception;
}
