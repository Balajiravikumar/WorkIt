package com.example.WorkIt.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.WorkIt.Entities.User;


public interface UserRepository extends JpaRepository<User, Long> {

	Optional<User> findByMobile(String mobile);
	List<User> findByService(String service);
}
