package com.skilldistillery.jparecords.data;

import java.sql.ResultSet;
import java.sql.SQLException;
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
	public RecordStore create(RecordStore newRecord) {
		em.persist(newRecord);
		em.flush();
		return newRecord;
	}

	@Override
	public RecordStore update(int id, RecordStore updateRecord) {
		RecordStore edit = em.find(RecordStore.class, id);
		if (edit != null) {
			edit.setArtist(updateRecord.getArtist());
			edit.setAlbumTitle(updateRecord.getAlbumTitle());
			edit.setColor(updateRecord.getColor());
			edit.setCondition(updateRecord.getCondition());
			edit.setDuration(updateRecord.getDuration());
			edit.setFormat(updateRecord.getFormat());
			edit.setGenre(updateRecord.getGenre());
			edit.setLabel(updateRecord.getLabel());
			edit.setPrice(updateRecord.getPrice());
			edit.setReleaseYear(updateRecord.getReleaseYear());
			edit.setReleaseType(updateRecord.getReleaseType());
			edit.setStock(updateRecord.getStock());
			edit.setSpecialFeatures(updateRecord.getSpecialFeatures());
			edit.setTrackCount(updateRecord.getTrackCount());
			edit.setTracklist(updateRecord.getTracklist());
		}
		return edit;
	}

	@Override
	public boolean deleteById(int id) {
		RecordStore delete = em.find(RecordStore.class, id);
		if (delete != null) {
			em.remove(delete);
			return true;
		}
		return false;
	}

	@Override
	public RecordStore findRecordById(int id) {
		return em.find(RecordStore.class, id);
	}

//
//	public RecordStore populateRecordFromResultSet(ResultSet rs) {
//		RecordStore record = new RecordStore();
//		try {
//			record.setId(rs.getInt("id")); 
//			record.setArtist(rs.getString("artist")); 
//			record.setAlbumTitle(rs.getString("albumTitle")); 
//			record.setColor(rs.getString("color")); 
//			record.setCondition(rs.getString("condition")); 
//			record.setDuration(rs.getString("duration")); 
//			record.setFormat(rs.getString("format")); 
//			record.setGenre(rs.getString("genre")); 
//			record.setLabel(rs.getString("label")); 
//			record.setPrice(rs.getDouble("price")); 
//			record.setReleaseYear(rs.getInt("releaseYear")); 
//			record.setReleaseType(rs.getString("releaseType")); 
//			record.setStock(rs.getInt("stock")); 
//			record.setSpecialFeatures(rs.getString("specialFeatures")); 
//			record.setTrackCount(rs.getInt("trackCount")); 
//			record.setTracklist(rs.getString("tracklist"));
//		
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return record;
//	
//}

	@Override
	public List<RecordStore> findAll() {

		String jpql = "SELECT r FROM RecordStore r";
		return em.createQuery(jpql, RecordStore.class).getResultList();
	}
}
