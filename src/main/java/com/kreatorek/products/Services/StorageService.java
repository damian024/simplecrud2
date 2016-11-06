package com.kreatorek.products.Services;

import java.util.ArrayList;
import java.util.List;

import com.kreatorek.products.Domain.Product;

public class StorageService implements IStorageService<Product> {
	private int id = 0;
	private List<Product> db = new ArrayList<Product>();
	
	@Override
	public void Add(Product toAdd) {
		Product pr = new Product();
		pr.setId(id);
		pr.setDescription(toAdd.getDescription());
		pr.setName(toAdd.getName());
		pr.setPrice(toAdd.getPrice());
		id++;
		db.add(pr);
		System.out.println(db);
	}

	@Override
	public void Modify(Product modifyied) {
		int _id = modifyied.getId();
		Delete(_id);
		db.add(modifyied);
		
	}

	@Override
	public List<Product> getAll() {
		return db;
	}

	@Override
	public boolean Delete(int toDeleteId) {
		for(int i =0; i< db.size(); i++)
		{
			if(db.get(i).getId() == toDeleteId)
			{
				db.remove(i);
				return true;
			}
		}
		return false;
	}
	public boolean Delete(Product toDelete){
		int _id = toDelete.getId();
		for(int i =0; i< db.size(); i++)
		{
			if(db.get(i).getId() == _id )
			{
				db.remove(i);
				return true;
			}
		}
		return false;
	}
	
	public Product GetWithId(int id)
	{
		for(int i =0; i< db.size(); i++)
		{
			if(db.get(i).getId() == id)
			{
				return db.get(i);
				
			}
		}
		return null;
	}


}
