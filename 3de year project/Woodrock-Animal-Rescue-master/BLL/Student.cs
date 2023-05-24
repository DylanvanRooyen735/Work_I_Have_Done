using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Collections;
using DataAccess;

namespace BusinessLayer
{
    public class Student
    {
        #region Class Properties

        private int studentID;
        private string name;
        private string surname;
        private string gender;
        private string idNumber;
        private string balance;
        private string parentName;
        private string parentSurname;
        private string product;
        private string location;


        public int StudentID { get => studentID; set => studentID = value; }
        public string Name { get => name; set => name = value; }
        public string Surname { get => surname; set => surname = value; }
        public string Gender { get => gender; set => gender = value; }
        public string IdNumber { get => idNumber; set => idNumber = value; }
        public string Balance { get => balance; set => balance = value; }
        public string ParentName { get => parentName; set => parentName = value; }
        public string ParentSurname { get => parentSurname; set => parentSurname = value; }
        public string Product { get => product; set => product = value; }
        public string Location { get => location; set => location = value; }

        #endregion


        #region Constructors
        public Student(int studentID, string name, string surname, string gender, string idNumber, string balance, string parentName, string parentSurname, string product, string location)
        {
            this.studentID = studentID;
            this.name = name;
            this.surname = surname;
            this.gender = gender;
            this.idNumber = idNumber;
            this.balance = balance;
            this.parentName = parentName;
            this.parentSurname = parentSurname;
            this.product = product;
            this.location = location;
        }

        public Student()
        {
                
        }

        #endregion


        #region overrides

        public override string ToString()
        {
            return string.Format("StudentID: {0}, Name: {1}, Surname: {2}, Gender: {3}, IdNumber: {4}, Balance: {5}, Parent Name: {6}, Parent Surname: {7}, Location: {8}, Product: {9}"
                , studentID, name, surname, gender, idNumber, balance,parentName,parentSurname, location, product);
        }

        public override bool Equals(object obj)
        {
            return base.Equals(obj);
        }

        public override int GetHashCode()
        {
            return base.GetHashCode();
        }

        #endregion


        #region Modify Studens

        public List<Student> GetStudent()
        {
            List<Student> students = new List<Student>();
            DBAccess db = new DBAccess();
            DataSet results = db.ReadData("tblStudent");
            foreach (DataRow item in results.Tables["tblStudent"].Rows)
            {
                students.Add(new Student(int.Parse(item["StudentID"].ToString()), item["Name"].ToString(), item["Surname"].ToString(), item["Gender"].ToString(), item["IDNumber"].ToString(), item["Balance"].ToString(), item["ParentName"].ToString(), item["ParentSurname"].ToString(), item["Product"].ToString(), item["Location"].ToString()));
            }
            return students;
        }        

        public void AddStudent(ArrayList students)
        {
            DBAccess db = new DBAccess();
            db.InsertStudent("tblStudent", students);
        }

        public void UpdateStudent(ArrayList input)
        {
            DBAccess db = new DBAccess();
            db.UpdateStudent("tblStudent", input);
        }

        public void DeleteStudent(int input)
        {
            DBAccess db = new DBAccess();
            db.DeleteStudent("tblStudent", input);
        }

        #endregion

    }
}
