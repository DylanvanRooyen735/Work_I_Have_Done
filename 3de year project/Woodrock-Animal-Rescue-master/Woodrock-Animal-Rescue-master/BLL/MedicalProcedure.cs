using System;
using System.Collections.Generic;
using System.Text;
using Woodrock_Animal_Rescue.DAL;

namespace Woodrock_Animal_Rescue.BLL
{

    class MedicalProcedure
    {
        #region Pro and flieds

        private int procedureID;
        private string description;
        private int duration;
        private float cost;

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
            return string.format("Procedure ID : {0}, Descreiption: {1}, Duration: {2}, Cost: {3}", procedureID,description, duration, cost);
        }

        public void AddProcedure()
        {
            string query = string.format("INSERT INTO Medical Procedures (Procedure ID : {0}, Descreiption: {1}, Duration: {2}, Cost: {3})", procedureID, description, duration, cost);
            DataHandler dh = new DataHandler();
            dh.Insert(query);
        }

        public void EditProcedure()
        {
            string query = string.format("Update Medical Procedures SET (ProcedureID : {0}, Descreiption: {1}, Duration: {2}, Cost: {3})", procedureID, description, duration, cost);
            DataHandler dh = new DataHandler();
            dh.Update(query);
        }

        public void RemoveProcedure()
        {
            string query = string.format("DELETE FROM Medical Procedures WHERE (ProcedureID : {0}, Descreiption: {1}, Duration: {2}, Cost: {3})", procedureID, description, duration, cost);
            DataHandler dh = new DataHandler();
            dh.Delete(query);
        }

        public void ScheduleProcedure(DateTime dateOfPro, int animalId, int empId)
        {
            string query = string.format("INSERT INTO Medical Procedures (EmployeeID : {0}, AnimalID: {1}, Date: {2})", empID, animalId, dateOfPro);
            DataHandler dh = new DataHandler();
            dh.Insert(query);
        }

        public void ListProcedureByDate()
        {
            string query = string.format("SELECT * FROM Medical Procedures WHERE(Date: {2})", empID, animalId, dateOfPro);
            DataHandler dh = new DataHandler();
            dh.Select(query);
        }

        #endregion






    }




}
