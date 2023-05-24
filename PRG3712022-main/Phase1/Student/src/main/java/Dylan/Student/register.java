package Phase1.Student.src.main.java.Dylan.Student;

public class register {
    private int register_id;
    private String student_name;
    private String student_address;
    private String student_email;
    private String student_password;
    private String course_name;

    register(String student_name_, String student_address_, String student_email_, String student_password_, String course_name_)
    {
        this.student_name = student_name_;
        this.student_address = student_address_;
        this.student_email = student_email_;
        this.student_password = student_password_;
        this.course_name = course_name_;
    }

    public String getstudentname(){
        return student_name;
    }

    public String getstudentpass()
    {
        return student_password;
    }
    public String getstudentaddress()
    {
        return student_address;
    }

    public String getstudentemail()
    {
        return student_email;
    }

    public String getcourse(){
        return course_name;
    }
    

}
