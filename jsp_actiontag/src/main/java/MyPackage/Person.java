package MyPackage;

public class Person {
	private String name;
	private int age;
	private double height;
	
	public void setName(String name) {
		this.name=name;
	}
	
	public void setAge(int age) {
		this.age=age;
	}
	
	public void setHeight(double height) {
		this.height=height;
	}
	
	public void Introduce() {
		System.out.println("�̸�:"+this.name);
		System.out.println("����:"+this.age);
		System.out.println("Ű:"+this.height);
	}
}