package com.example.woodus2.controller;

import com.example.woodus2.model.Notice;
import com.example.woodus2.service.NoticeService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
@AllArgsConstructor
@RequestMapping("/api/notice")
public class NoticeController {

    private final NoticeService noticeService;

    @PostMapping("")
    public ResponseEntity<List<Notice>> NoticeCreate(
        @RequestParam("title") String title,
        @RequestParam("content") String content){
        Notice.RequestDto requestDto = new Notice.RequestDto();
        requestDto.setTitle(title);
        requestDto.setContent(content);

        Long result = noticeService.save(requestDto);

        if (result != null){
            return ResponseEntity.ok(this.noticeService.searchNoticeByid(result));
        }else{
            return ResponseEntity.badRequest().build();
        }
    }

    @GetMapping("/list")
    public ResponseEntity<List<Notice>> NoticeReadAll(){
        return ResponseEntity.ok(this.noticeService.searchAll());
    }

    @GetMapping("/{notice_id}")
    public ResponseEntity<List<Notice>> NoticeInfo(@PathVariable(name = "notice_id") Long notice_id){
        return ResponseEntity.ok(this.noticeService.searchNoticeByid(notice_id));
    }

    @PostMapping("/modifyNotice")
    public void modifyNotice(
        @RequestParam("id")String id,
        @RequestParam("title")String title,
        @RequestParam("content")String content) {
        this.noticeService.modifyNoticeById(id,title,content);
    }

    @PostMapping("/removeNotice")
    public void removeNotice(@RequestParam("id")String id) {
        this.noticeService.removeNoticeById(id);
    }
}
