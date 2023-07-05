package ar.edu.educacionit.dao;

import java.util.List;

public interface GenericDAO<E,K> {
	E getByID(K key);
	boolean insert(E entity);
	boolean delete(E entity);
	boolean update(E entity);
	List<E> getAll();
}
