package dto;

public class buyListDTO {
	private int num;
	private String ID;
	private String name;
	private int price;
	private String date;
	
	public buyListDTO(int num, String ID, String name, int price, String date) {
		this.num=num;
		this.ID=ID;
		this.name=name;
		this.price=price;
		this.date=date;
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
	public String getDate() {
		return this.date;
	}
}
