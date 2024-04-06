package com.example.woodus2.controller;

import com.example.woodus2.model.Contribution;
import com.example.woodus2.model.Image;
import com.example.woodus2.service.ContributionService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.zip.Deflater;

@RestController
@CrossOrigin
@AllArgsConstructor
@RequestMapping("/api/contribution")
public class ContributionController {
    private final ContributionService contributionService;

    @PostMapping("")
    public ResponseEntity<List<Contribution>> createContribution(
            @RequestParam("title")String title,
            @RequestParam("subtitle")String subtitle,
            @RequestParam(value = "imageFile_thumbnail", required = false)MultipartFile thumbnail_file,
            @RequestParam(value = "imageFile_contents1", required = false)MultipartFile contents1_file,
            @RequestParam(value = "imageFile_contents2", required = false)MultipartFile contents2_file,
            @RequestParam(value = "imageFile_contents3", required = false)MultipartFile contents3_file,
            @RequestParam(value = "imageFile_contents4", required = false)MultipartFile contents4_file,
            @RequestParam(value = "imageFile_contents5", required = false)MultipartFile contents5_file
            )throws IOException {
        Date now = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String str_now = formatter.format(now);

        Contribution.RequestDto input = new Contribution.RequestDto(title, subtitle, str_now);
        Long contribution_id = contributionService.save(input);

         if(thumbnail_file != null){
             Image thumbnail = new Image(thumbnail_file.getOriginalFilename(),thumbnail_file.getContentType(),compressBytes(thumbnail_file.getBytes()));
             contributionService.addImageAsThumbnail(thumbnail, contribution_id);
         }

        if(contents1_file != null){
            Image contents1 = new Image(contents1_file.getOriginalFilename(),contents1_file.getContentType(),compressBytes(contents1_file.getBytes()));
            contributionService.addImageAsContents1(contents1,contribution_id);
        }
        if(contents2_file != null){
            Image contents2 = new Image(contents2_file.getOriginalFilename(),contents2_file.getContentType(),compressBytes(contents2_file.getBytes()));
            contributionService.addImageAsContents2(contents2,contribution_id);
        }
        if(contents3_file != null){
            Image contents3 = new Image(contents3_file.getOriginalFilename(),contents3_file.getContentType(),compressBytes(contents3_file.getBytes()));
            contributionService.addImageAsContents3(contents3,contribution_id);
        }
        if(contents4_file != null){
            Image contents4 = new Image(contents4_file.getOriginalFilename(),contents4_file.getContentType(),compressBytes(contents4_file.getBytes()));
            contributionService.addImageAsContents4(contents4,contribution_id);
        }
        if(contents5_file != null){
            Image contents5 = new Image(contents5_file.getOriginalFilename(),contents5_file.getContentType(),compressBytes(contents5_file.getBytes()));
            contributionService.addImageAsContents5(contents5,contribution_id);
        }

        return ResponseEntity.ok(this.contributionService.searchContributionById(contribution_id));
    }

    @GetMapping("")
    public ResponseEntity<List<Contribution>> searchAllContribution(){
        return ResponseEntity.ok(this.contributionService.searchAllContribution());
    }

    @GetMapping("/{contribution_id}")
    public ResponseEntity<List<Contribution>> searchContributionById(@PathVariable(name="contribution_id") Long contribution_id){
        return ResponseEntity.ok(this.contributionService.searchContributionById(contribution_id));
    }

    public static byte[] compressBytes(byte[] data){
        Deflater deflater = new Deflater();
        deflater.setInput(data);
        deflater.finish();

        ByteArrayOutputStream outputStream = new ByteArrayOutputStream(data.length);
        byte[] buffer = new byte[1024];
        while (!deflater.finished()) {
            int count = deflater.deflate(buffer);
            outputStream.write(buffer,0,count);

            try{
                outputStream.close();
            }catch (IOException e){ }
        }
        return outputStream.toByteArray();
    }
}
