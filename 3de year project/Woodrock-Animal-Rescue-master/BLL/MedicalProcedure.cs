using System;
using System.Collections.Generic;
using System.Text;
using Woodrock_Animal_Rescue.DAL;

namespace Woodrock_Animal_Rescue.BLL
{

    class MedicalProcedure
    {
        #region Properties

        private int procedureID;
        private string description;
        private int duration;
        private double cost;

        public global::System.Int32 ProcedureID { get => procedureID; set => procedureID = value; }
        public global::System.String Description { get => description; set => description = value; }
        public global::System.Int32 Duration { get => duration; set => duration = value; }
        public global::System.Single Cost { get => cost; set => cost = value; }
        #endregion

        #region Constructor
        public MedicalProcedure(global::System.Int32 procedureID, global::System.String description, global::System.Int32 duration, global::System.Single cost)
        {
            this.procedureID = procedureID;
            this.description = description;
            this.duration = duration;
            this.cost = cost;
        }
        public MedicalProcedure()
        {

        }
        #endregion

        #region Methods
        public override ToString()
        {
            return string.format("Procedure ID : {0}, Description: {1}, Duration: {2}, Cost: {3}", procedureID,description, duration, cost);
        }

        public void AddProcedure(int procID, string descrip, int dura, double cost)
        {
            string query= string.Format("INSERT INTO MedicalProcedure (ProcedureID, Description, Duration, Cost)  VALUES ('{0}','{1}','{2}','{3}') ", procID, descrip, dura, cost);
            DataHandler dh = new DataHandler();
            dh.Insert(query);
        }

        public void EditProcedure(int procID, string descrip, int dura, double cost)
        {
            string query = string.format("UPDATE MedicalProcedure SET Description = '{1}',Duration = '{2}',Cost = '{3}' WHERE ProcedureID = {0}", procID, descrip, dura, cost);
            DataHandler dh = new DataHandler();
            dh.Update(query);
        }

        public void RemoveProcedure(int procID)
        {
            string query = string.format("DELETE FROM MedicalProcedure WHERE ProcedureID = {0}", procID);
            DataHandler dh = new DataHandler();
            dh.Delete(query);
        }

        public void ScheduleProcedure(DateTime dateOfPro, int animalId, int empId)
        {
            string query = string.format("INSERT INTO MedicalProcedures (EmployeeID, AnimalID, Date) VALUES ('{0}','{1}','{2}')", empID, animalId, dateOfPro);
            DataHandler dh = new DataHandler();
            dh.Insert(query);
        }

        public void ListProcedureByDate(DateTime dateOfPro)
        {
            string query = string.format("SELECT * FROM MedicalProcedures WHERE(Date: {2})",dateOfPro);
            DataHandler dh = new DataHandler();
            dh.Select(query);
        }

        #endregion






    }




}
