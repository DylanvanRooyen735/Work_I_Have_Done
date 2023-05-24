using System;
using System.Collections.Generic;
using System.Text;
using Woodrock_Animal_Rescue.DAL;


namespace Woodrock_Animal_Rescue.BLL
{
    public class Medication
{

        //Will add comments latyer - Hanru Bosch aka da beast 

        #region Properties

        private int medicationId;
        private string medicationName;
        private float stock;
        private float cost;
        private string description;
        private Array diagnosises;

        public int MedicationId { get => medicationId; set => medicationId = value; }
        public string MedicationName { get => medicationName; set => medicationName = value; }
        public float Stock { get => stock; set => stock = value; }
        public float Cost { get => cost; set => cost = value; }
        public string Description { get => description; set => description = value; }
        public Array Diagnosises { get => diagnosises; set => diagnosises = value; }



        #endregion


        #region Constructor

        public Medication(int medicationId, string medicationName, float stock, float cost, string description, Array diagnosises)
        {
            MedicationId = medicationId;
            MedicationName = medicationName;
            Stock = stock;
            Cost = cost;
            Description = description;
            Diagnosises = diagnosises;
        }

        public Medication()
        {

        }

        #endregion


        #region Methods & Functions

        public override string ToString()
        {
            return string.Format("Medication Name: {0}, Stock: {1}, Cost: R{2}, Description: {3}, Diagnosises: {4}", medicationName, stock, cost, description, diagnosises);
        }

        public void AddMedication(int medicationId, string medicationName, float stock, float cost, string description, Array diagnoses)
        {
            string qry = string.Format("INSERT INTO Animal_Medication (MedicationID,MedicationName,Stock,Cost,Description,Diagnosises)  VALUES ('{0}','{1}','{2}','{3}','{4}','{5}') ", medicationId, medicationName, stock, cost, description, diagnoses);
            DataHandler dh = new DataHandler();
            dh.Insert(qry);
        }

        public void IncreaseStock(int amount, int medicationID)
        {
            string qry = string.Format("UPDATE Animal_Medication SET Stock = '{0}' WHERE MedicationID = {1}", amount, medicationID);
            DataHandler dh = new DataHandler();
            dh.Update(qry);
        }

        public void DecreaseStock(int amount, int medicationID)
        {
            string qry = string.Format("UPDATE Animal_Medication SET Stock = '{0}' WHERE MedicationID = {1}", amount, medicationID);
            DataHandler dh = new DataHandler();
            dh.Update(qry);
        }

        public void EditDetails(float cost, string description, int medicationID)
        {
            string qry = string.Format("UPDATE Animal_Medication SET Cost = '{0}', Description = '{1}' WHERE MedicationID = {2}", cost, description, medicationID);
            DataHandler dh = new DataHandler();
            dh.Update(qry);
        }

        public void AddDiagnosis(int medicationID, Array diagnosis)
        {
            string qry = string.Format("UPDATE Animal_Medication SET Diagnosis = '{0}' WHERE MedicationID = {1}", diagnosis, medicationID);
            DataHandler dh = new DataHandler();
            dh.Update(qry);
        }

        public void DeleteMedication(int medicationID)
        {
            string qry = string.Format("DELETE FROM Animal_Medication WHERE MedicationID = {0}", medicationID);
            DataHandler dh = new DataHandler();
            dh.Delete(qry);
        }

        #endregion



    }
}
