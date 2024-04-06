package com.example.woodus2.repository;

import com.example.woodus2.model.Activity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ActivityRepository extends JpaRepository<Activity, Long> {
    //SQL part
    String searchAllQuery = "select * from activity order by id desc";
    String searchByIdQuery = "select * from activity where id = :#{#id}";

    //METHOD part
    @Query(value = searchAllQuery, nativeQuery = true)
    List<Activity> searchAllActivity();

    @Query(value = searchByIdQuery, nativeQuery = true)
    List<Activity> searchActivityById(@Param("id")Long id);



}
