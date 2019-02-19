package com.jwt.model;
import java.io.Serializable;
import java.util.Comparator;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

// this is test in vendor for git check 
@Entity
@Table(name = "VEN_TBL")

public  class Vendor   {
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
 //second test for git change
	//new test pramod
	
	//third comment for new version
	// this commend by pramod fourth
	//fith comment
	//fith comment
    @Column
    private String name;
 
    @Column
    private String email;
 
    @Column
    private String address;
 
    @Column
    private String telephone;

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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	 
	 

	
	 
	 
 
 
  
	
}
