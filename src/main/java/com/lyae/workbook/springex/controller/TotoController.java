package com.lyae.workbook.springex.controller;

import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/todo")
@Log4j2
public class TotoController {

    @RequestMapping("/list")
    public void list() {
        log.info("todo list.....");
    }

//    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public void register() {
        log.info("todo register.....");
    }

    @PostMapping("/register")
    public void registerPost() {
        log.info("POST todo register.....");
    }
}
