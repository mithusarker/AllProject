package com.spring.springCrudProject.Dao;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

public class Emp {  
private int id;

@NotBlank
@Size(min=4,max=30,message="name must be between 4 and 100 characters")
private String name;  

@NotNull(message="salary must not empty")
private Integer salary;

@NotBlank
@Size(min=4,max=30,message="designation must be between 4 and 100 characters")
private String designation;

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public Integer getSalary() {
	return salary;
}

public void setSalary(Integer salary) {
	this.salary = salary;
}

public String getDesignation() {
	return designation;
}

public void setDesignation(String designation) {
	this.designation = designation;
}



  
  
}  