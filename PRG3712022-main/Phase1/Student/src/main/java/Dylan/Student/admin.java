package Phase1.Student.src.main.java.Dylan.Student;

public class admin {
    private int admin_id;
    private String admin_name;
    private String password;
    private String contact;

    admin(String admin_name_, String password_, String contact_)
    {
        this.admin_name = admin_name_;
        this.password = password_;
        this.contact = contact_;
    }

    public String getadminname(){
        return admin_name;
    }
    public String getadminpass(){
        return password;
    }
    public String getadmincontact(){
        return contact;
    }
}
