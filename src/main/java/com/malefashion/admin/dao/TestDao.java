package com.malefashion.admin.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mapping.AccessOptions.SetOptions.Propagation;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.malefashion.admin.dao.interfacedao.ITestDao;
import com.malefashion.admin.entity.Student;
import com.malefashion.admin.entity.Test;

@Repository
public class TestDao implements ITestDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Test Test(String id) throws Exception {
		return new Test(id);
	}

	@Override
//	public List<Student> GetStudent(int age) throws Exception {
	@Transactional
	public Student GetStudent(int age) throws Exception {
		Session session = this.sessionFactory.getCurrentSession();
//		String sql = "Select new Student(e.age) from Student e";
//		Student  student = session.get(Student.class, age);
//		Query<Student> query = session.createQuery(sql, Student.class);
		
//	      return query.getResultList();
		return session.get(Student.class, age);
//		return student;
	}
	@Override
	@Transactional
	public List<Student> GetStudent2(int age) throws Exception {
		Session session = this.sessionFactory.getCurrentSession();
		String sql = "Select new Student(e.age) from Student e";
		Query<Student> query = session.createQuery(sql, Student.class);
		
	      return query.getResultList();

	}
}
