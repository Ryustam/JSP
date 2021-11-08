package mypackage;

public class test1 {
	private int sum=0;
	
	public int print_sum(int num) {
		for(int i=1;i<=num;i++) {
			sum=sum+i;
		}
		return sum;
	}
}
