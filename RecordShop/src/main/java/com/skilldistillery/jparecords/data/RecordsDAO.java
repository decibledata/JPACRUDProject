package com.skilldistillery.jparecords.data;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.skilldistillery.jparecords.entity.RecordStore;

public interface RecordsDAO {

	RecordStore findRecordById(int id);

	List<RecordStore> findAll();

	RecordStore create(int id);

	RecordStore update(RecordStore record);

	boolean deleteById(int id);

}
