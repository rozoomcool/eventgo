package ru.itabrek.eventgo.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
@RequestMapping("/api/v1/users")
public class UserController {

    @GetMapping("/${id}")
    public ResponseEntity getUserById(@PathVariable Long id){
        try{
            return ResponseEntity.ok("");
        } catch(Exception e){
            return ResponseEntity.badRequest().body("Error to find user");
        }
    }

    @GetMapping("/hello")
    public String someText(){
        return "Hello";
    }

    @GetMapping
    public ResponseEntity getAllUsers(@PathVariable Long id){
        try{
            return ResponseEntity.ok("");
        } catch(Exception e){
            return ResponseEntity.badRequest().body("Error to find user");
        }
    }

}
