package mypackage;

public class character {
	
	int hp;
	double speed;
	
	public character(int h, double s) {
		this.hp=h;
		this.speed=s;
	}

	public int get_hp() {
		return hp;
	}
	
	public double get_speed() {
		return speed;
	}
}
