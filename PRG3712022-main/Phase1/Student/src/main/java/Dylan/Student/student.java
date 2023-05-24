package Phase1.Student.src.main.java.Dylan.Student;

class student{
    private int student_id;
    private String student_name;
    private String student_address;
    private String student_email;
    private String student_password;

    student(String student_name_, String student_address_, String student_email_, String student_password_)
    {
        this.student_name = student_name_;
        this.student_address = student_address_;
        this.student_email = student_email_;
        this.student_password = student_password_;
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
}