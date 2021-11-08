package mypackage;

public class warrior extends character{
	private String weapon;
	private String result;
	
	public warrior(int h, double s,String w) {
		super(h,s);
		this.weapon=w;
	}
	
	public String Show_Info() {
		result ="";
		result +="전사 hp:"+hp+"<br>";
		result +="전사 이동속도:"+speed+"<br>";
		result +="전사 무기:"+weapon+"<br>";
		
		return result;
	}
}
