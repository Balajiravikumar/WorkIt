package com.example.WorkIt.Entities;

import java.math.BigDecimal;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String email;

    private String mobile;

    private String password;
    
    private String service;
    
    private BigDecimal experience;
    
    private int chargePerDay;
    
    private String landmark;

    public BigDecimal getExperience() {
		return experience;
	}
	public void setExperience(BigDecimal experience) {
		this.experience = experience;
	}
	public int getChargePerDay() {
		return chargePerDay;
	}
	public void setChargePerDay(int chargePerDay) {
		this.chargePerDay = chargePerDay;
	}
	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}
	// getters & setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getEmail() { return email; }
	public void setEmail(String email) { this.email = email; }

    public String getMobile() { return mobile; }
    public void setMobile(String mobile) { this.mobile = mobile; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
    
    public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
}
