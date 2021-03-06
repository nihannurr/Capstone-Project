package com.capstoneproject.cleverweeklyschedular;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.boot.web.servlet.ServletComponentScan;


@ServletComponentScan
@SpringBootApplication
@EnableConfigurationProperties(value=SchedularProperties.class)
public class SchedularApplication {

	public static void main(String[] args) {
		SpringApplication.run(SchedularApplication.class, args);
		
	}

}
