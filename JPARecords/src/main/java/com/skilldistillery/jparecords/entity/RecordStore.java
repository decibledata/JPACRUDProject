package com.skilldistillery.jparecords.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class RecordStore {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String artist;
	private String AlbumTitle;
	private String color;
	private String condition;
	private int duration;
	private String format;
	private String genre;
	private String label;
	private double price;
	private int ReleaseYear;
	private String ReleaseType;
	private int stock;
	private String SpecialFeatures;
	private int TrackCount;
	private String tracklist;
	
	
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
		return AlbumTitle;
	}

	public void setAlbumTitle(String albumTitle) {
		AlbumTitle = albumTitle;
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

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
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
		return ReleaseYear;
	}

	public void setReleaseYear(int releaseYear) {
		ReleaseYear = releaseYear;
	}

	public String getReleaseType() {
		return ReleaseType;
	}

	public void setReleaseType(String releaseType) {
		ReleaseType = releaseType;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public String getSpecialFeatures() {
		return SpecialFeatures;
	}

	public void setSpecialFeatures(String specialFeatures) {
		SpecialFeatures = specialFeatures;
	}

	public int getTrackCount() {
		return TrackCount;
	}

	public void setTrackCount(int trackCount) {
		TrackCount = trackCount;
	}

	public String getTracklist() {
		return tracklist;
	}

	public void setTracklist(String tracklist) {
		this.tracklist = tracklist;
	}

	@Override
	public String toString() {
		return "RecordStore [id=" + id + ", artist=" + artist + ", AlbumTitle=" + AlbumTitle + ", color=" + color
				+ ", condition=" + condition + ", duration=" + duration + ", format=" + format + ", genre=" + genre
				+ ", label=" + label + ", price=" + price + ", ReleaseYear=" + ReleaseYear + ", ReleaseType="
				+ ReleaseType + ", stock=" + stock + ", SpecialFeatures=" + SpecialFeatures + ", TrackCount="
				+ TrackCount + ", tracklist=" + tracklist + "]";
	}
	
	
	
}
