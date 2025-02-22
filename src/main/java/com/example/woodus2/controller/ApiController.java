package com.example.woodus2.controller;

import com.example.woodus2.model.*;
import com.example.woodus2.service.CourseService;
import com.example.woodus2.service.StudentService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
@AllArgsConstructor
@RequestMapping("/api")
public class ApiController {

    private final CourseService courseService;
    private final StudentService studentService;

    //1.교육과정(신규)을 등록
    @PostMapping("/course")
    public ResponseEntity<List<Course>> CourseCreate(
            @RequestParam("name")String name,
            @RequestParam("fee")Long fee,
            @RequestParam("num_people")Long num_people,
            @RequestParam("start_date")String start_date,
            @RequestParam("end_date")String end_date,
            @RequestParam("start_time")String start_time,
            @RequestParam("end_time")String end_time,
            @RequestParam("place")String place,
            @RequestParam("type")String type,
            @RequestParam("week")String week,
            @RequestParam("summary")String summary,
            @RequestParam("notice")String notice,
            @RequestParam("recruitYn")String recruitYn
    ){
        Course.RequestDto requestDto = new Course.RequestDto();
        requestDto.setName(name);
        requestDto.setFee(fee);
        requestDto.setNum_people(num_people);
        requestDto.setStart_date(start_date);
        requestDto.setEnd_date(end_date);
        requestDto.setStart_time(start_time);
        requestDto.setEnd_time(end_time);
        requestDto.setPlace(place);
        requestDto.setType(type);
        requestDto.setWeek(week);
        requestDto.setSummary(summary);
        requestDto.setNotice(notice);
        requestDto.setRecruitYn(recruitYn);

        Long result = courseService.save(requestDto);

        if (result != null){
            return ResponseEntity.ok(this.courseService.searchCourseById(result));
        }else {
            return ResponseEntity.badRequest().build();
        }
    }

    //2. 교육과정(모집중)을 조회
    @GetMapping("/course/present")
    public ResponseEntity<List<Course>> CourseReadPresent(){
        return ResponseEntity.ok(this.courseService.searchPresentCourse());
    }

    //3. 교육과정(종료)을 조회
    @GetMapping("/course/over")
    public ResponseEntity<List<Course>> CourseReadOver(){
        return ResponseEntity.ok(this.courseService.searchOverCourse());
    }

    //4. 교육과정 세부내용 조회
    @GetMapping("/course/{course_id}")
    public ResponseEntity<List<Course>> CourseInfo(@PathVariable(name="course_id") Long course_id){
        return ResponseEntity.ok(this.courseService.searchCourseById(course_id));
    }

    //5. 세부 교육과정 정보 수정
    @PostMapping("/modifyCourse")
    public void modifyCourse(
        @RequestParam("id") String id,
        @RequestParam("name") String name,
        @RequestParam("fee") String fee,
        @RequestParam("num_people") String num_people,
        @RequestParam("start_date") String start_date,
        @RequestParam("end_date") String end_date,
        @RequestParam("start_time") String start_time,
        @RequestParam("end_time") String end_time,
        @RequestParam("place") String place,
        @RequestParam("type") String type,
        @RequestParam("week") String week,
        @RequestParam("summary") String summary,
        @RequestParam("notice") String notice,
        @RequestParam("recruit_Yn") String recruit_Yn
    ){
        this.courseService.modifyCourse(id, name, fee, num_people, start_date, end_date,
                start_time, end_time, place, type, week, summary, notice, recruit_Yn);
    }

    //6. 세부 교육과정 정보 삭제
    @PostMapping("/removeCourse")
    public void removeCourse(@RequestParam("id") String id){
        this.courseService.removeCourse(id);
    }

    //7.교육희망자 신규 신청
    @PostMapping("/student")
    public ResponseEntity<List<Student>> StudentCreate(@RequestBody Student.RequestDto requestDto){
        Long result = studentService.save(requestDto);

        if (result != null){
            return ResponseEntity.ok(this.studentService.searchStudentById(result));
        }
        return ResponseEntity.badRequest().build();
    }

    //8.교육과정별 신청자 세부정보 조회
    @GetMapping("/student/{course_id}")
    public ResponseEntity<List<Student>> StudentInfo(@PathVariable(name="course_id") Long course_id){
        return ResponseEntity.ok(this.studentService.searchStudentByCourseId(course_id));
    }

}
