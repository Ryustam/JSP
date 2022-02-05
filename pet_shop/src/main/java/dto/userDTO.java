package dto;

public class userDTO {
	private int num;
	private String ID;
	private String name;
	private int price;
	
	public userDTO() {
	}	
	
	public userDTO(int num, String ID, String name, int price) {
		this.num=num;
		this.ID=ID;
		this.name=name;
		this.price=price;
	}
	public int getNum() {
		return this.num;
	}
	public String getID() {
		return this.ID;
	}
	
	public String getName() {
		return this.name;
	}
	public int getPrice() {
		return this.price;
	}
}
