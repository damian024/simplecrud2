package products.Services;

import java.util.List;


public interface IStorageService<E> {
	
	public void Add(E toAdd);
	public void Modify(E modifyied);
	
	public List<E> getAll();
	boolean Delete(int toDeleteId);

}
