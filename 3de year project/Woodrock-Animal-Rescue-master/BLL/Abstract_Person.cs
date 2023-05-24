using System;
using System.Collections.Generic;
using System.Text;
using Woodrock_Animal_Rescue.DAL;

namespace Woodrock_Animal_Rescue.BLL
{
    public abstract class Abstract_Person
{
        #region Properties

        private int personID;
        private string personType;
        private string personName;
        private string personSurname;
        private string personCell;
        private string personEmail;
        private string personPassword;

        public global::System.Int32 PersonID { get => personID; set => personID = value; }
        public global::System.String PersonType { get => personType; set => personType = value; }
        public global::System.String PersonName { get => personName; set => personName = value; }
        public global::System.String PersonSurname { get => personSurname; set => personSurname = value; }
        public global::System.String PersonCell { get => personCell; set => personCell = value; }
        public global::System.String PersonEmail { get => personEmail; set => personEmail = value; }
        public global::System.String PersonPassword { get => personPassword; set => personPassword = value; }

        #endregion

        #region Contructor

        public Abstract_Person(System.Int32 personID, System.String personType, System.String personName, System.String personSurname, System.String personCell, System.String personEmail, System.String personPassword)
        {
            PersonID = personID;
            PersonType = personType;
            PersonName = personName;
            PersonSurname = personSurname;
            PersonCell = personCell;
            PersonEmail = personEmail;
            PersonPassword = personPassword;
        }

        public Abstract_Person()
        {
                
        }

        #endregion

        #region Methods & Procedures

        public override ToString()
        {
            return string.format("PersonID: {0}, Person Type: {1}, Person Name: {2}, Person Surname: {3}, Person Cell: {4}, Person Email: {5}, Person Password: {6}", personID, personType,personName,personSurname,personCell,personEmail,personPassword);
        }

        // public void AddPerson(string TypeOfPerson, string address, int persId, string persType, string persName, string persSurname, string persCell, string persEmail, string persPassword)
        // {
        //     DBAccess da = new DBAccess();
        //     string qry1 = "";
        //     string qry2 = "";
        //     string detID = "";
        //     if(TypeOfPerson == "Client")
            
        //     {
        //     qry1 = string.Format("INSERT INTO Details_Table (Details_ID, Name, Surname, Cellphone, Email, Password) VALUES({0},{1}, {2}, {3}, {4}, {5})", detID, persName, persSurname, persCell, persEmail, persPassword);
        //     da.Insert(qry1);

        //     dh.SelectSingleItem()....................


        //     qry2 = string.format("INSERT INTO Clients_Table (Client_ID, Address, Details_ID) VALUES({0}, {1}, {2})", detID, address );
               
        //     }
            
        // }

        public abstract bool VerifyPerson(string username, string password, List<Abstract_Person> personList ) //The username is the email of the person. 
        {
            var verifiedResult = false;

            foreach(var item in personList) //loops through each item in the list of people 
            {
                if(item.PersonEmail = username && item.PersonPassword == password)
                {
                    verifiedResult = true;
                }
            }

            return verifiedResult;            
        }
        public void DeletePerson(int persID)
        {
            string qry = string.Format("DELETE FROM Person WHERE PersonID = {0}", persID);
            DataHandler dh = new DataHandler();
            dh.Delete(qry);
        }

        public void EditPerson(int persId, string persType, string persName, string persSurname, string persCell, string persEmail, string persPassword)
        {
            string qry = string.Format("UPDATE Peson SET PersonType = '{1}',PersonName = '{2}',PersonSurname = '{3}',PersonCell = '{4}',PersonEmail = '{5}',PersonPassword = '{6}' WHERE PersonID = {0}", persId, persType, persName, persSurname, persCell, persEmail, persPassword);
            DataHandler dh = new DataHandler();
            dh.Update(qry);
        }

        #endregion


    }
}
