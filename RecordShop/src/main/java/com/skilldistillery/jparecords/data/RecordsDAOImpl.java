package com.skilldistillery.jparecords.data;

import java.sql.Connection;
import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.jparecords.entity.RecordStore;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class RecordsDAOImpl implements RecordsDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public RecordStore create(RecordStore newRecord) {
		Connection conn = null;
		try {
			em.getTransaction().begin();
			em.persist(newRecord);
			em.flush();
			System.out.println("Record persisted: " + newRecord);
			em.getTransaction().commit();
			System.out.println("Transaction committed");
			return newRecord;
		} catch (Exception e) {
			em.getTransaction().rollback();
			e.printStackTrace();
			return null;
		} finally {
			em.close();
		}
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

	@Override
	public List<RecordStore> findAll() {
		String jpql = "SELECT r FROM RecordStore r";
		return em.createQuery(jpql, RecordStore.class).getResultList();
	}
}
