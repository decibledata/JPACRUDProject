package com.skilldistillery.jparecords.data;

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
	public List<RecordStore> findRecordById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

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
	
}
