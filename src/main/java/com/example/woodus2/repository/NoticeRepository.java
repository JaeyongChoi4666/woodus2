package com.example.woodus2.repository;

import com.example.woodus2.model.Notice;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NoticeRepository extends JpaRepository<Notice, Long> {
    //SQL part
    String searchAllQuery = "select * from notice order by id desc";
    String searchNoticeByIdQuery = "select * from notice where id = :#{#id}";
    String modifyNoticeByIdQuery = "update notice set title= :#{#title}, content= :#{#content} where id = :#{#id}";
    String removeNoticeByIdQuery = "delete notice where id = :#{#id}";

    //METHOD part
    @Query(value = searchAllQuery, nativeQuery = true)
    List<Notice> searchAll();

    @Query(value = searchNoticeByIdQuery, nativeQuery = true)
    List<Notice> searchNoticeById(@Param("id") Long id);

    @Query(value = modifyNoticeByIdQuery, nativeQuery = true)
    List<Notice> modifyNoticeById(
        @Param("id") String id,
        @Param("title") String title,
        @Param("content") String content
    );

    @Query(value = removeNoticeByIdQuery, nativeQuery = true)
    List<Notice> removeNoticeById(@Param("id") String id);
}
