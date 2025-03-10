package com.skilldistillery.jparecords.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "record_shop")
public class RecordStore {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String artist;
	private String albumTitle;
	private String color;
	@Column(name="media_condition")
	private String condition;
	private String duration;
	private String format;
	private String genre;
	private String label;
	private double price;
	private int releaseYear;
	private String releaseType;
	private int stock;
	private String specialFeatures;
	private int trackCount;
	private String tracklist;
	
	public RecordStore() {
		
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
	}

	public String getAlbumTitle() {
		return albumTitle;
	}

	public void setAlbumTitle(String albumTitle) {
		this.albumTitle = albumTitle;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getFormat() {
		return format;
	}

	public void setFormat(String format) {
		this.format = format;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getReleaseYear() {
		return releaseYear;
	}

	public void setReleaseYear(int releaseYear) {
		this.releaseYear = releaseYear;
	}

	public String getReleaseType() {
		return releaseType;
	}

	public void setReleaseType(String releaseType) {
		this.releaseType = releaseType;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public String getSpecialFeatures() {
		return specialFeatures;
	}

	public void setSpecialFeatures(String specialFeatures) {
		this.specialFeatures = specialFeatures;
	}

	public int getTrackCount() {
		return trackCount;
	}

	public void setTrackCount(int trackCount) {
		this.trackCount = trackCount;
	}

	public String getTracklist() {
		return tracklist;
	}

	public void setTracklist(String tracklist) {
		this.tracklist = tracklist;
	}

	@Override
	public String toString() {
		return "RecordStore [id=" + id + ", artist=" + artist + ", albumTitle=" + albumTitle + ", color=" + color
				+ ", condition=" + condition + ", duration=" + duration + ", format=" + format + ", genre=" + genre
				+ ", label=" + label + ", price=" + price + ", releaseYear=" + releaseYear + ", releaseType="
				+ releaseType + ", stock=" + stock + ", specialFeatures=" + specialFeatures + ", trackCount="
				+ trackCount + ", tracklist=" + tracklist + "]";
	}
	
	
	
}
