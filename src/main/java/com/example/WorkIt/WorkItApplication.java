package com.example.WorkIt;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.persistence.autoconfigure.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
//@EntityScan(basePackages = "com.example.WorkIt.Entities")
//@EnableJpaRepositories("com.example.WorkIt.repository")
public class WorkItApplication {

	public static void main(String[] args) {
		SpringApplication.run(WorkItApplication.class, args);
	}

}
