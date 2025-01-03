package com.skilldistillery.jparecords.data;

import java.util.List;

import com.skilldistillery.jparecords.entity.RecordStore;

public interface RecordsDAO {

	List<RecordStore> findAll();

	RecordStore findRecordById(int id);

	RecordStore create(RecordStore newRecord);

	RecordStore update(int id, RecordStore updatRecord);

	boolean deleteById(int id);

}
