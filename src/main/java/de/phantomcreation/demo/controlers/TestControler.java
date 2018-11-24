package de.phantomcreation.demo.controlers;

import java.util.concurrent.atomic.AtomicLong;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestControler {

    @RequestMapping("/ping")
    public String ping() {
        return "pong";
    }
}
