package com.example.woodus2.service;

import com.example.woodus2.model.Course;
import com.example.woodus2.repository.CourseRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@RequiredArgsConstructor
@Service
public class CourseService {

    private final CourseRepository courseRepository;

    @Transactional
    public Long save(Course.RequestDto requestDto){
        return courseRepository.save(requestDto.toEntity()).getId();
    }

    @Transactional
    public List<Course> searchPresentCourse(){
        return courseRepository.searchPresentCourse();
    }

    @Transactional
    public List<Course> searchOverCourse(){
        return courseRepository.searchOverCourse();
    }

    public List<Course> searchCourseById(Long id){
        return courseRepository.searchCourseById(id);
    }

    public void modifyCourse(String id, String name, String fee, String num_people, String start_date, String end_date,
                             String start_time, String end_time, String place, String type, String week, String summary, String notice, String recruit_Yn
    ){
        courseRepository.modifyCourse(id, name, fee, num_people, start_date, end_date,
                start_time, end_time, place, type, week, summary, notice, recruit_Yn);
    }

    public void removeCourse(String id){
        courseRepository.removeCourse(id);
    }

}
