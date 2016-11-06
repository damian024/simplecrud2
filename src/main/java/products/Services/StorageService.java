package products.Services;

import java.util.ArrayList;
import java.util.List;

import products.Domain.Product;

public class StorageService implements IStorageService<Product> {
	private List<Product> db = new ArrayList<Product>();
	
	@Override
	public void Add(Product toAdd) {
		
		
		db.add(toAdd);
		// TODO Auto-generated method stub
		
	}

	@Override
	public void Delete(Product toDelete) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void Modify(Product toModify) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Product> getAll() {
		return db;
	}


}
