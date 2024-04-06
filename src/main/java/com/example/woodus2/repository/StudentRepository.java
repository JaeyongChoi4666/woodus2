package com.example.woodus2.repository;

import com.example.woodus2.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {
    //SQL part
    String searchStudentByIdQuery = "select * from student where stu_id = :#{#stu_id}";
    String searchStudentByCourseIdQuery = "select * from student where course_id = :#{#course_id} order by stu_id desc";

    //METHOD part
    @Query(value = searchStudentByIdQuery, nativeQuery = true)
    List<Student> searchStudentById(@Param("stu_id") Long stu_id);

    @Query(value = searchStudentByCourseIdQuery, nativeQuery = true)
    List<Student> searchStudentByCourseId(@Param("course_id") Long course_id);
}
