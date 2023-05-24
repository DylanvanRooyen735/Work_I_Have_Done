<?php
$servername = "localhost";
$dbname = "WoodRock";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) 
{
    die("Connection failed: " . $conn->connect_error);
}

class MedicalProcedure
{
    public $procedureID;
    public $description;
    public $duration;
    public $cost;

    function _constructor($procedureID, $description, $duration, $cost)
    {
        $this ->procedure = $procedureID;
        $this ->description = $description;
        $this ->duration = $duration;
        $this ->cost = $cost;
    }

    function _AddProcedure($procID, $descrip, $dura, $cost)
    {
        $sql = ("INSERT INTO MedicalProcedure (ProcedureID, Description, Duration, Cost)  VALUES ('{0}','{1}','{2}','{3}') ", 
        $procID, $descrip, $dura, $cost);

        if ($conn->query($sql) === TRUE) {
            echo "New record created successfully";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }

    function _EditProcedure($procID, $descrip, $dura, $cost)
    {
        $sql = ("UPDATE MedicalProcedure SET Description = '{1}',Duration = '{2}',Cost = '{3}' WHERE ProcedureID = '{0}'", $procID, $descrip, $dura, $cost);

        if ($conn->query($sql) === TRUE) {
            echo "Record updated successfully";
        } else {
            echo "Error updating record: " . $conn->error;
        }
    }

    function _RemoveProcedure($procID)
    {
        $sql = ("DELETE FROM MedicalProcedure WHERE ProcedureID = {0}", $procID);

        if (mysqli_query($conn, $sql)) {
            echo "Record deleted successfully";
        } else {
            echo "Error deleting record: " . mysqli_error($conn);
        }
    }
    
    function _ScheduleProcedure($empID, $animalId, $dateOfPro)
    {
        $sql = ("INSERT INTO MedicalProcedures (EmployeeID, AnimalID, Date) VALUES ('{0}','{1}','{2}')", $empID, $animalId, $dateOfPro);

        if ($conn->query($sql) === TRUE) {
            echo "New record created successfully";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }    
    }
}
