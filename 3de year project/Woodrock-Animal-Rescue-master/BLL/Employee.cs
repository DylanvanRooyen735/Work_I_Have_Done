using System;
using System.Collections.Generic;
using System.Text;
using Woodrock_Animal_Rescue.DAL;

namespace Woodrock_Animal_Rescue.BLL
{
    class Employee: Abstract_Person
{

        #region Properties

        private int employeeID;
        private string employeeRole;
        private double employeeSalary;
        private DateTime dateHired;

        public global::System.String EmployeeRole { get => employeeRole; set => employeeRole = value; }
        public global::System.Double EmployeeSalary { get => employeeSalary; set => employeeSalary = value; }
        public DateTime DateHired { get => dateHired; set => dateHired = value; }
        public global::System.Int32 EmployeeID { get => employeeID; set => employeeID = value; }

        #endregion


        #region Constructors

        public Employee(int personID, string personType, string personName, string personSurname, string personEmail, string personPassword, System.String employeeRole, System.Double employeeSalary, DateTime dateHired, System.Int32 employeeID)
            :base(personID, personType, personName, personSurname, personEmail, personPassword)
        {
            this.EmployeeRole = employeeRole;
            this.EmployeeSalary = employeeSalary;
            this.DateHired = dateHired;
            this.EmployeeID = employeeID;
        }

        public Employee()
            :base()
        {

        }

        public void AddEmployee() //Used to add a new employee to the system
        {
            DataHandler dh = new DataHandler();
            string qry = string.Format("INSERT INTO Employee_Table (Employee_ID, Details_ID, Role_ID, Date_Hired, Salary/Wage, Password) VALUES()")
        }



        #endregion


        #region Methods & Procedures

        public override ToString()
        {
            return string.format("Employee ID: {0}, Employee Role: {1}, Employee Salary: {2}, Date Hired: {3}",employeeID, employeeRole, employeeSalary, dateHired );
        }

        public void AddPerson(int empID, string emprole, double empSalary, DateTime dateHire)
        {
            string qry = string.Format("INSERT INTO Employee (EmployeeID, EmployeeRole,EmployeeSalary,DateHired)  VALUES ('{0}','{1}','{2}', '{3}') ",empID ,emprole,empSalary,dateHire);
            DataHandler dh = new DataHandler();
            dh.Insert(query);
        }

        public void DeletePerson(int empID)
        {
            string qry = string.Format("DELETE FROM Employee WHERE EmployeeID = {0}", empID);
            DataHandler dh = new DataHandler();
            dh.Delete(qry);
        }

        public void EditPerson(int empID, string emprole, double empSalary, DateTime dateHire)
        {
            string qry = string.Format("UPDATE Employee SET EmployeeRole = '{1}',EmployeeSalary = '{2}',DateHire = '{3}'", empID, emprole, empSalary, dateHire);
            DataHandler dh = new DataHandler();
            dh.Update(qry);
        }

        #endregion



    }
}
