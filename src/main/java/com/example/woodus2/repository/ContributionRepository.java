package com.example.woodus2.repository;

import com.example.woodus2.model.Contribution;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ContributionRepository extends JpaRepository<Contribution, Long> {
    //SQL part
    String searchAllQuery = "select * from contribution order by id desc";
    String searchByIdQuery = "select * from contribution where id = :#{#id}";

    //METHOD part
    @Query(value = searchAllQuery, nativeQuery = true)
    List<Contribution> searchAllContribution();

    @Query(value = searchByIdQuery, nativeQuery = true)
    List<Contribution> searchContributionById(@Param("id") Long id);
}
