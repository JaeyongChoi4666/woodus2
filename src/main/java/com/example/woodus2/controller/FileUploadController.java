package com.example.woodus2.controller;

import com.example.woodus2.model.Course;
import com.example.woodus2.model.Image;
import com.example.woodus2.service.CourseService;
import com.example.woodus2.service.FileService;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.Inflater;

@RestController
@CrossOrigin
@AllArgsConstructor
@RequestMapping("/api/images")
public class FileUploadController {

    private final FileService fileService;
    private final CourseService courseService;

    @PostMapping("/register")
    public ResponseEntity<List<Course>> uploadImage(MultipartHttpServletRequest request, @RequestPart(value = "id") Long course_id) throws IOException {

        Image thumbnail = new Image(
                request.getFile("list_image").getOriginalFilename(),
                request.getFile("list_image").getContentType(),
                compressBytes(request.getFile("list_image").getBytes())
        );
        Image poster = new Image(
                request.getFile("detail_image").getOriginalFilename(),
                request.getFile("detail_image").getContentType(),
                compressBytes(request.getFile("detail_image").getBytes())
        );

        int res_thumbnail_id   = fileService.addImageAsThumbnail(thumbnail, course_id);
        int res_poster_id      = fileService.addImageAsPoster(poster, course_id);

        if (res_thumbnail_id == res_poster_id){
            return ResponseEntity.ok(this.courseService.searchCourseById(course_id));
        }else{
            return ResponseEntity.badRequest().build();
        }
    }

    @PostMapping("/registerContribution")
    public void uploadImage2(MultipartHttpServletRequest request, @RequestPart(value = "id") Long contribution_id) throws IOException {
        Image contribution = new Image(
                request.getFile("contribution_image").getOriginalFilename(),
                request.getFile("contribution_image").getContentType(),
                compressBytes(request.getFile("contribution_image").getBytes())
        );

        fileService.addImageAsContribution(contribution, contribution_id);
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

    @GetMapping("/{id}")
    public ResponseEntity<byte[]> getImage(@PathVariable Long id, HttpServletRequest request){
        try{
            Image image = fileService.getImageById(id);
            image.setPic_byte(decompressBytes(image.getPic_byte()));
            byte[] response_pic = image.getPic_byte();
            if(response_pic.length > 0){
                HttpHeaders header = new HttpHeaders();
                header.set("Content-Type",image.getType());
                return new ResponseEntity<byte[]>(response_pic, header, HttpStatus.OK);
            }
        }catch (Exception e){
        }
        return null;
    }

    public static byte[] decompressBytes(byte[] data){
        Inflater inflater = new Inflater();
        inflater.setInput(data);
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream(data.length);
        byte[] buffer = new byte[1024];
        try{
            while(!inflater.finished()){
                int count = inflater.inflate(buffer);
                outputStream.write(buffer,0,count);
            }
            outputStream.close();
        }catch (IOException | DataFormatException ignored){}

        return outputStream.toByteArray();
    }
}
