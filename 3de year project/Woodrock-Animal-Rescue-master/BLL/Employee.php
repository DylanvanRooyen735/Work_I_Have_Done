<?php
$servername = "localhost";
$dbname = "WoodRock";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) 
{
    die("Connection failed: " . $conn->connect_error);
}

class Employee extends Person
{
    public $employeeID;
    public $employeeRole;
    public $employeeSalary;
    public $dateHired;

    function _constructor($employeeID, $employeeRole, $employeeSalary, $dateHired)
    {
        $this ->employeeID = $employeeID;
        $this ->employeeRole = $employeeRole;
        $this ->employeeSalary = $employeeSalary;
        $this ->dateHired = $dateHired;
    }

    function _AddEmployee($employee_ID, $details_ID, $role_ID, $date_Hired, $salary, $password)
    {
        $sql = ("INSERT INTO Employee_Table (Employee_ID, Details_ID, Role_ID, Date_Hired, Salary, Password) VALUES('{0}','{1}','{2}','{3}','{4}','{5}')",$employee_ID, $details_ID, $role_ID, $date_Hired, $salary, $password);
        if ($conn->query($sql) === TRUE)
        {
            echo "New record created successfully";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }

    function _DeletePerson($empID)
    {
        $sql = ("DELETE FROM Employee WHERE EmployeeID = {0}", $empID);

        if (mysqli_query($conn, $sql))
        {
            echo "Record deleted successfully";
        } else {
            echo "Error deleting record: " . mysqli_error($conn);
        }
    }

    function _EditPerson($empID, $emprole, $empSalary, $dateHire)
    {
        $sql = ("UPDATE Employee SET EmployeeRole = '{1}',EmployeeSalary = '{2}',DateHire = '{3}'", $empID, $emprole, $empSalary, $dateHire);

        if ($conn->query($sql) === TRUE) {
            echo "Record updated successfully";
        } else {
            echo "Error updating record: " . $conn->error;
        }
    }
    
}
