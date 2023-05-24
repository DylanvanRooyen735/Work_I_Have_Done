<?php
$servername = "localhost";
$dbname = "WoodRock";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) 
{
    die("Connection failed: " . $conn->connect_error);
}

class Medication
{
    public $medicationId;
    public $medicationName;
    public $stock;
    public $cost;
    public $description;
    public $diagnosises;

    function _constructor($medicationId, $medicationName, $stock, $cost, $description, $diagnosises)
    {
        $this ->medicationId = $medicationId;
        $this ->medicationName = $medicationName;
        $this ->stock = $stock;
        $this ->cost = $cost;
        $this ->description = $description;
        $this ->diagnosises = $diagnosises;
    }

    function _AddMedication($medicationId, $medicationName, $stock, $cost, $description, $diagnosises)
    {
        $sql = ("INSERT INTO Animal_Medication (MedicationID,MedicationName,Stock,Cost,Description,Diagnosises)  VALUES ('{0}','{1}','{2}','{3}','{4}','{5}') ", $medicationId, $medicationName, $stock, $cost, $description, $diagnosises);

        if ($conn->query($sql) === TRUE) {
            echo "New record created successfully";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }

    function _IncreaseStock($amount, $medicationID)
    {
        $sql = ("UPDATE Animal_Medication SET Stock = '{0}' WHERE MedicationID = '{1}'", $amount, $medicationID);

        if ($conn->query($sql) === TRUE) {
            echo "Record updated successfully";
        } else {
            echo "Error updating record: " . $conn->error;
        }        
    }

    function _DecreaseStock($amount, $medicationID)
    {
        $sql = ("UPDATE Animal_Medication SET Stock = '{0}' WHERE MedicationID = '{1}'", $amount, $medicationID);

        if ($conn->query($sql) === TRUE) {
            echo "Record updated successfully";
        } else {
            echo "Error updating record: " . $conn->error;
        }    
    }

    function _EditDetails($cost, $description, $medicationID)
    {
        $sql = ("UPDATE Animal_Medication SET Cost = '{0}', Description = '{1}' WHERE MedicationID = '{2}'", cost, description, medicationID);
        if ($conn->query($sql) === TRUE) {
            echo "Record updated successfully";
        } else {
            echo "Error updating record: " . $conn->error;
        }   
    }

    function _AddDiagnosis($diagnosis, $medicationID)
    {
        $sql = ("UPDATE Animal_Medication SET Diagnosis = '{0}' WHERE MedicationID = '{1}'", $diagnosis, $medicationID);
        if ($conn->query($sql) === TRUE) {
            echo "Record updated successfully";
        } else {
            echo "Error updating record: " . $conn->error;
        }  
    }

    function _DeleteMedication($medicationID)
    {
        $sql = ("DELETE FROM Animal_Medication WHERE MedicationID = '{0}'", $medicationID)

        if (mysqli_query($conn, $sql)) {
            echo "Record deleted successfully";
        } else {
            echo "Error deleting record: " . mysqli_error($conn);
        }
    }
}
