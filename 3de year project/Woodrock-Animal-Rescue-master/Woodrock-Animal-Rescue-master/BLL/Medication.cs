using System;
using System.Collections.Generic;
using System.Text;

namespace Woodrock_Animal_Rescue.BLL
{
    public class Medication
{

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
            return base.ToString();
        }




        #endregion



    }
}
