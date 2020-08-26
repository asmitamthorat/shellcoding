public class EmployeeWage {

	public static void main (String[] args) {
		int CheckPresence = 1;
		double empCheck = Math.floor(Math.random()*10)%2;
		if (empCheck == CheckPresence) {
			System.out.println("emp is present");
		}
		else {
			System.out.println("emp is absent");
		}
	}
}
