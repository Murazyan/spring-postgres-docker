package com.example.spring_postgres_docker.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {

    @GetMapping("/ping")
    public ResponseEntity ping(){
        return ResponseEntity.ok("Server response : OK");
    }
}
