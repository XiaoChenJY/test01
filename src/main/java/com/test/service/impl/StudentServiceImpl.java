package com.test.service.impl;

import com.test.dao.StudentDao;
import com.test.domain.Student;
import com.test.service.StudentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class StudentServiceImpl implements StudentService {
    @Resource
    private StudentDao dao;

    @Override
    public List<Student> findStudents() {
        return dao.selectStudent();
    }

    @Override
    public int addStudent(Student student) {
        return dao.insertStudent(student);
    }


}
