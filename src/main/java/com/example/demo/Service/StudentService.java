package com.example.demo.Service;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Entity.StudentEntity;
import com.example.demo.Model.Student;
import com.example.demo.Repository.StudentRepo;

@Service
public class StudentService {

	@Autowired
	private StudentRepo repo;

	public StudentEntity saveFromModel(Student st) {
		if (repo.existsById(st.getId())) {
			return null;
		}
		StudentEntity entity = new StudentEntity();
		BeanUtils.copyProperties(st, entity);
		return repo.save(entity);
	}

	public boolean find(Student st) {

		if (st.getId() == null) {
			return false;
		}

		if (repo.existsById(st.getId())) {
			StudentEntity s = repo.findById(st.getId()).get();
			return s.getName().equals(st.getName()) && s.getAge().equals(st.getAge());
		}
		return false;
	}

	public List<StudentEntity> findall() {
		return repo.findAll();
	}

	public StudentEntity find(Integer id) {
		return repo.findById(id).orElse(null);
	}

	public boolean delete(Integer id) {
		if (repo.existsById(id)) {
			repo.deleteById(id);
			return true;
		}
		return false;
	}

	public StudentEntity update(Student st) {
		if (!repo.existsById(st.getId())) {
			return null;
		}
		StudentEntity entity = new StudentEntity();
		BeanUtils.copyProperties(st, entity);

		return repo.save(entity);
	}

}
