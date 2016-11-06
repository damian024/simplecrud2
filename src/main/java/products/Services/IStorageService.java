package products.Services;

import java.util.List;

public interface IStorageService<E> {
	
	public void Add(E toAdd);
	public void Delete(E toDelete);
	public void Modify(E toModify);
	
	public List<E> getAll(); 

}
