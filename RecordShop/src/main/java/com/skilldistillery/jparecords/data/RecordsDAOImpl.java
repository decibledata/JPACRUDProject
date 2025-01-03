package com.skilldistillery.jparecords.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.jparecords.entity.RecordStore;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class RecordsDAOImpl implements RecordsDAO {
	
	private static final String URL = "jdbc:mysql://localhost:3306/recordsdb";
	private String user = "twocat";
	private String pass = "twocat";
	

	@PersistenceContext
	private EntityManager em;

	@Override
	public RecordStore create(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public RecordStore update(RecordStore record) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(int id) {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public RecordStore findRecordById(int id) {
		// TODO Auto-generated method stue
		return em.find(RecordStore.class, id);
	}
	

	public RecordStore populateRecordFromResultSet(ResultSet rs) {
		RecordStore record = new RecordStore();
		try {
			record.setId(rs.getInt("id")); 
			record.setArtist(rs.getString("artist")); 
			record.setAlbumTitle(rs.getString("albumTitle")); 
			record.setColor(rs.getString("color")); 
			record.setCondition(rs.getString("condition")); 
			record.setDuration(rs.getInt("duration")); 
			record.setFormat(rs.getString("format")); 
			record.setGenre(rs.getString("genre")); 
			record.setLabel(rs.getString("label")); 
			record.setPrice(rs.getDouble("price")); 
			record.setReleaseYear(rs.getInt("releaseYear")); 
			record.setReleaseType(rs.getString("releaseType")); 
			record.setStock(rs.getInt("stock")); 
			record.setSpecialFeatures(rs.getString("specialFeatures")); 
			record.setTrackCount(rs.getInt("trackCount")); 
			record.setTracklist(rs.getString("tracklist"));
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return record;
	
}

	@Override
	public List<RecordStore> findAll() {
		List<RecordStore> records = new ArrayList<>();
		
		try (Connection conn = DriverManager.getConnection(URL, user, pass)){
			String sql = "SELECT * FROM record_shop";
			PreparedStatement stmt = conn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			
			while (rs.next()) {
				RecordStore record = populateRecordFromResultSet(rs);
				records.add(record);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return records;
	}
}
