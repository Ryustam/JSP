package MyPackage;

public class Student {
	private Person person;
	private double GPA;
	
	public void setPerson(Person person) {
		this.person=person;
	}
	
	public void setGPA(double GPA) {
		this.GPA=GPA;
	}
	
	public void Intoduce_Student() {
		person.Introduce();
		System.out.println("∆Ú¡°:"+GPA);
	}
}
