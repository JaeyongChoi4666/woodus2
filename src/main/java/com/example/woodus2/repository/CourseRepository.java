package com.example.woodus2.repository;

import com.example.woodus2.model.Course;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;


@Repository
public interface CourseRepository extends JpaRepository<Course, Long> {
    //SQL part
    String searchPresentCourseQuery = "select * from course order by id desc" ;
    String searchOverCourseQuery = "select * from course where order by id desc";
    String searchCourseByIdQuery = "select * from course where id = :#{#id}";
    String modifyCourseQuery = "update course set " +
            "name = :#{#name}, " +
            "fee = :#{#fee}, " +
            "num_people = :#{#num_people}, " +
            "start_date = :#{#start_date}, " +
            "end_date = :#{#end_date}, " +
            "start_time = :#{#start_time}, " +
            "end_time = :#{#end_time}, " +
            "place = :#{#place}, " +
            "type = :#{#type}, " +
            "week = :#{#week}, " +
            "summary = :#{#summary}, " +
            "notice = :#{#notice}, " +
            "recruit_Yn = :#{#recruit_Yn} " +
            "where id = :#{#id}";
    String removeCourseQuery = "delete from course where id = :#{#id}";

    //METHOD part
    @Query(value = searchPresentCourseQuery, nativeQuery = true)
    List<Course> searchPresentCourse();

    @Query(value = searchOverCourseQuery, nativeQuery = true)
    List<Course> searchOverCourse();

    @Query(value = searchCourseByIdQuery, nativeQuery = true)
    List<Course> searchCourseById(@Param("id") Long id);

    @Query(value = modifyCourseQuery, nativeQuery = true)
    List<Course> modifyCourse(
            @Param("id") String id,
            @Param("name") String name,
            @Param("fee") String fee,
            @Param("num_people") String num_people,
            @Param("start_date") String start_date,
            @Param("end_date") String end_date,
            @Param("start_time") String start_time,
            @Param("end_time") String end_time,
            @Param("place") String place,
            @Param("type") String type,
            @Param("week") String week,
            @Param("summary") String summary,
            @Param("notice") String notice,
            @Param("recruit_Yn") String recruit_Yn
    );
    @Query(value = removeCourseQuery, nativeQuery = true)
    List<Course> removeCourse(@Param("id") String id);
}
