package com.juanlopezaranzazu.api.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.juanlopezaranzazu.api.dtos.ResponseDTO;

@RestController
@RequestMapping("/api/hello")
public class HelloController {

    @GetMapping
    public ResponseDTO<String> hello() {
        return new ResponseDTO<>("Hello World", null, 200);
    }
}
