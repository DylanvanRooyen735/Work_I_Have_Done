package Phase1.Student.src.main.java.Dylan.Student;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class StudentApplication {

	public static void main(String[] args) {
		SpringApplication.run(StudentApplication.class, args);

		student stud = new student("Dylan", "May not get this", "575677@student", "DylanStud");
		admin ad = new admin("Chuma", "chuma", "chuma");
	}

}
