package com.skilldistillery.metal.entities;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class MetalGuitaristTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private MetalGuitarist bands;
	
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAMetal");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		bands = em.find(MetalGuitarist.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		bands = null;
	}

	@Test
	void test_Metal_Bands_mapping() {
		assertNotNull(bands);
	}

}
