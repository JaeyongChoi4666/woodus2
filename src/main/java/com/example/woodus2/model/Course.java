package com.example.woodus2.model;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.text.SimpleDateFormat;
import java.util.Date;

@Data
@Entity(name="course")
@AllArgsConstructor
@NoArgsConstructor
@Getter
public class Course {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private Long fee;
    private Long num_people;
    private String start_date;
    private String end_date;
    private String start_time;
    private String end_time;
    private String summary;
    private String place;
    private String week;
    private Long thumbnail_id;
    private Long poster_id;
    private String type;
    private String notice;
    private String recruitYn;
    private String regdate;

    @Builder
    public Course(
        Long id, String name, Long fee, Long num_people, String start_date,
        String end_date, String start_time, String end_time, String summary, String week, String type,
        String notice, String place, String recruitYn, String regdate
    ){
        this.id=id;
        this.name=name;
        this.fee=fee;
        this.num_people=num_people;
        this.start_date=start_date;
        this.end_date=end_date;
        this.start_time=start_time;
        this.end_time=end_time;
        this.summary=summary;
        this.week=week;
        this.place=place;
        this.type=type;
        this.notice=notice;
        this.recruitYn=recruitYn;
        this.regdate=regdate;
    }

    @Getter
    @Setter
    public static class RequestDto{

        private String name;
        private Long fee;
        private Long num_people;
        private String start_date;
        private String end_date;
        private String start_time;
        private String end_time;
        private String place;
        private String type;
        private String week;
        private String summary;
        private String notice;
        private String recruitYn;
        private String regdate;

        public Course toEntity(){
            Date now = new Date();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            String str_now = formatter.format(now);

            return Course.builder()
                    .name(name)
                    .fee(fee)
                    .num_people(num_people)
                    .start_date(start_date)
                    .end_date(end_date)
                    .start_time(start_time)
                    .end_time(end_time)
                    .summary(summary)
                    .place(place)
                    .week(week)
                    .type(type)
                    .notice(notice)
                    .recruitYn(recruitYn)
                    .regdate(str_now)
                    .build();
        }
    }

    @Getter
    public static class ResponseDto {

        private Long id;
        private String name;
        private Long fee;
        private Long num_people;
        private String startDate;
        private String endDate;
        private String startTime;
        private String endTime;
        private String summary;
        private String place;
        private String week;
        private String type;
        private String notice;
        private String recruitYn;
        private Long thumbnail_id;
        private Long poster_id;
        private String regdate;

        public ResponseDto(Course course){
            this.id=course.getId();
            this.name=course.getName();
            this.fee=course.getFee();
            this.num_people=course.getNum_people();
            this.startDate=course.getStart_date();
            this.endDate= course.getEnd_date();
            this.startTime=course.getStart_time();
            this.endTime= course.getEnd_time();
            this.summary= course.getSummary();
            this.place= course.getPlace();
            this.week= course.getWeek();
            this.type= course.getType();
            this.notice= course.getNotice();
            this.recruitYn=course.getRecruitYn();
            this.thumbnail_id= course.getThumbnail_id();
            this.poster_id= course.getPoster_id();
            this.regdate=course.getRegdate();
        }
    }
}
