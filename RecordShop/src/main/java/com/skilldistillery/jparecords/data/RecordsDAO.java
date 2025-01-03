package com.skilldistillery.jparecords.data;

import java.util.List;

import com.skilldistillery.jparecords.entity.RecordStore;

public interface RecordsDAO {

	List<RecordStore> findRecordById(int id);
	RecordStore create(int id);
	RecordStore update(RecordStore record);
	boolean deleteById(int id);
}
