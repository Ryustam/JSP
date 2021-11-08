package dto;

public class goodsDTO {
	private int num;
	private String name;
	private int price;
	
	public goodsDTO(int num, String name, int price) {
		this.num=num;
		this.name=name;
		this.price=price;
	}
	
	public String getName() {
		return this.name;
	}
	
	public int getPrice() {
		return this.price;
	}
}
