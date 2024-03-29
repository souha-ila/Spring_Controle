package com.example.demo.entity;


import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
@Entity
public class Produit implements Serializable{

	@Id @GeneratedValue
	private Integer id;
	private String description;
	private double prix;
	private String name;
	private String img;
	
	public Produit() {
		super();
		
	}
	public Produit(String description, double prix,String name,String img) {
		super();
		this.description = description;
		this.prix = prix;
		this.name = name;
		this.img = img;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrix() {
		return prix;
	}
	public void setPrix(double prix) {
		this.prix = prix;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}

}

