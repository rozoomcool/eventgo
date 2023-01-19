package ru.itabrek.eventgo.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
@RequestMapping("/api/v1/events")
public class EventController {

    @GetMapping
    public ResponseEntity getAllEvents(){
        try{
            return ResponseEntity.ok("");
        } catch(Exception e){
            return ResponseEntity.badRequest().body("Error to find user");
        }
    }

}
