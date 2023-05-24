using System;
using System.Collections.Generic;
using System.Text;
using Woodrock_Animal_Rescue.DAL;

namespace Woodrock_Animal_Rescue.BLL
{
    public class Medical_Diagnosis
    {

        //Will add comments latyer - Hanru Bosch aka da beast

        #region Properties

        private int medicationDiagnosisID;
        private string diagnosisName;
        private string diagnosisTreatment;

        public int MedicationDiagnosisID { get => medicationDiagnosisID; set => medicationDiagnosisID = value; }
        public string DiagnosisName { get => diagnosisName; set => diagnosisName = value; }
        public string DiagnosisTreatment { get => diagnosisTreatment; set => diagnosisTreatment = value; }

        #endregion


        #region Constructor

        public Medical_Diagnosis(int medicationDiagnosisID, string diagnosisName, string diagnosisTreatment)
        {
            MedicationDiagnosisID = medicationDiagnosisID;
            DiagnosisName = diagnosisName;
            DiagnosisTreatment = diagnosisTreatment;
        }

        public Medical_Diagnosis()
        {

        }

        #endregion


        #region Methods & Procedures

        public override string ToString()
        {
            return string.Format("Medication DiagnosisID: {0}, Diagnosis Name: {1}, Diagnosis Treatment: {2}",medicationDiagnosisID, diagnosisName, diagnosisTreatment);
            
        }

        public void AddDiagnosis(int medicationDiagnosisID, string diagnosisName, string diagnosisTreatment)
        {
            string qry = string.Format("INSERT INTO Medical_Diagnosis (MedicationDiagnosisID, DiagnosisName, DiagnosisTreatment)  VALUES ('{0}','{1}','{2}') ", medicationDiagnosisID, diagnosisName, diagnosisTreatment);
            DataHandler dh = new DataHandler();
            dh.Insert(qry);
        }

        public string GetDiagnosisDetails(int medicalDiagnosisID)
        {
            string qry = string.Format("SELECT * FROM Medical_Diagnosis WHERE MedicationDiagnosisID = '{0}' ",medicalDiagnosisID);
            DataHandler dh = new DataHandler();
            string details = dh.Select(qry);
            return details.ToString();
        }

        public void IEditDiagnosis(int medicaldiagnosisID, string diagnosisName, string diagnosisTreatment)
        {
            string qry = string.Format("UPDATE Medical_Diagnosis SET DiagnosisName = '{0}', DiagnosisTreatment = '{1}' WHERE MedicationDiagnosisID = {2}", diagnosisName, diagnosisTreatment, medicaldiagnosisID);
            DataHandler dh = new DataHandler();
            dh.Update(qry);
        }

        public void DeleteDiaganosis(int medicalDiagnosisID)
        {
            string qry = string.Format("DELETE FROM Medical_Diagnosis WHERE MedicationDiagnosisID = {0}", medicalDiagnosisID);
            DataHandler dh = new DataHandler();
            dh.Delete(qry);
        }



        #endregion
        

    }
}
