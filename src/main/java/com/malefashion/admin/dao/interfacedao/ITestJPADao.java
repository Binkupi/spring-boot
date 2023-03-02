package com.malefashion.admin.dao.interfacedao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.malefashion.admin.entity.Student;


//@Repository
public interface ITestJPADao extends JpaRepository<Student, Integer>{
//		public List<Student> findByAgeLessThan(int age);
}
