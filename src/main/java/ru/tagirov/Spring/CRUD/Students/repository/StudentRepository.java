package ru.tagirov.Spring.CRUD.Students.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.tagirov.Spring.CRUD.Students.model.Student;

public interface StudentRepository extends JpaRepository<Student, Long> {
    void deleteByEmail(String email);
    Student findByEmail(String email);
}
