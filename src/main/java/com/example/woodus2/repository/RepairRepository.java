package com.example.woodus2.repository;

import com.example.woodus2.model.Repair;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RepairRepository extends JpaRepository<Repair, Long> {
    //SQL part
    String searchAllQuery = "select * from repair order by id desc";
    String searchByIdQuery = "select * from repair where id = :#{#id}";


    //METHOD part
    @Query(value = searchAllQuery, nativeQuery = true)
    List<Repair> searchAllRepair();

    @Query(value = searchByIdQuery, nativeQuery = true)
    List<Repair> searchRepairById(@Param("id") Long id);
}

