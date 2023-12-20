package ru.tagirov.Spring.CRUD.Students.service;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import ru.tagirov.Spring.CRUD.Students.model.Student;
import ru.tagirov.Spring.CRUD.Students.repository.StudentRepository;

import java.util.List;

@Service
@AllArgsConstructor
public class StudentServiceImpl implements StudentService{
    private final StudentRepository repository;
    @Override
    public List<Student> findAllStudents() {
        return repository.findAll();
    }

    @Override
    public Student saveStudent(Student student) {
        return repository.save(student);
    }

    @Override
    public Student findByEmail(String email) {
        return repository.findByEmail(email);
    }

    @Override
    public Student updateStudent(Student student) {
        return repository.save(student);
    }

    @Override
    public void deleteStudent(String email) {
        repository.deleteByEmail(email);
    }
}
