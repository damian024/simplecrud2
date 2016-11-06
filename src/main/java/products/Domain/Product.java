package products.Domain;

public class Product {
	private String id;
	private String description;
	private String name;
	private double price;
	private boolean bought;
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public boolean getBought() {
		return bought;
	}
	public void setBought(boolean bought) {
		this.bought = bought;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	

}
