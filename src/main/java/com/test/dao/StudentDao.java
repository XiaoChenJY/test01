package com.test.dao;

import com.test.domain.Student;

import java.util.List;

public interface StudentDao {
    int insertStudent(Student studnet);
    List<Student> selectStudent();
}
