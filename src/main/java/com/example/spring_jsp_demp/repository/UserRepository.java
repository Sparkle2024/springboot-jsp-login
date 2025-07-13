package com.example.spring_jsp_demp.repository;


import com.example.spring_jsp_demp.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {}
