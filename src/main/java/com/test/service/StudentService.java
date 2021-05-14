package com.test.service;

import com.test.domain.Student;

import java.util.List;

public interface StudentService {
    List<Student> findStudents();

    int addStudent(Student student);

}
