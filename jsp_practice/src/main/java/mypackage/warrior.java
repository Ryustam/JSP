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
		result +="���� hp:"+hp+"<br>";
		result +="���� �̵��ӵ�:"+speed+"<br>";
		result +="���� ����:"+weapon+"<br>";
		
		return result;
	}
}
