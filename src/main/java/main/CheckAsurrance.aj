package main;
import java.util.*;

public aspect CheckAsurrance {
	pointcut verifyAssurance():execution(void PetStore.makeAppointment(..));
	before() : verifyAssurance(){
		/*CODE HERE*/
		Scanner sc = new Scanner(System.in);
		System.out.println("Verifying assurance...");
		System.out.println("Name of your pet:");
		String nombre = sc.nextLine();
		System.out.println("Welcome " + nombre);
		System.out.println("You are able to use this service");
		 }
	after():verifyAssurance(){
		System.out.println("Request was executed succesfully");
	}
}
