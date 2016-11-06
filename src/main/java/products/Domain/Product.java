package products.Domain;

import java.text.DecimalFormat;

public class Product {
	private String description;
	private String name;
	private DecimalFormat price;
	
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
	public DecimalFormat getPrice() {
		return price;
	}
	public void setPrice(DecimalFormat price) {
		this.price = price;
	}
	

}
