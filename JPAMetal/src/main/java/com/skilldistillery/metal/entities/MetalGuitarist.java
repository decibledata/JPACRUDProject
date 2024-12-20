package com.skilldistillery.metal.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="metal_guitarist")
public class MetalGuitarist {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String albums;
	
	public MetalGuitarist() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAlbums() {
		return albums;
	}
	public void setAlbums(String albums) {
		this.albums = albums;
	}
	@Override
	public String toString() {
		return "MetalBands [id=" + id + ", album=" + albums + "]";
	}
	
}
