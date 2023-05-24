using System;
using System.Collections.Generic;
using System.Text;
using Woodrock_Animal_Rescue.DAL;

namespace Woodrock_Animal_Rescue.BLL
{
    class ClientClass : Abstract_Person
    {
        #region Properties

        private string personAddress;
        private string clientType; //Adopter, browser or surrenderrer
        private Array ownedAnimals;
        private Dictionary<DateTime,int> adoptedAnimals;
        private Dictionary<DateTime, int> surrenderedAnimals;

        public string PersonAddress { get => personAddress; set => personAddress = value; }
        public string ClientType { get => clientType; set => clientType = value; }
        public Array OwnedAnimals { get => ownedAnimals; set => ownedAnimals = value; }
        public Dictionary<DateTime, int> AdoptedAnimals { get => adoptedAnimals; set => adoptedAnimals = value; }
        public Dictionary<DateTime, int> SurrenderedAnimals { get => surrenderedAnimals; set => surrenderedAnimals = value; }

        #endregion


        #region Contructor

        public ClientClass(int personID, string personType, string personName, string personSurname, string personCell, string personEmail, string personPassword, string personAddressParam)
            :base(personID, personType, personName, personSurname, personCell, personEmail, personPassword)
        {
            this.personAddress = personAddressParam;
        }

        #endregion


        #region Methods & Procedures

        public void AddAdoption(int animalID, DateTime adoptionDate){ //Adoption date of an animal when a client adopts that animal.
            AdoptedAnimals.Add(adoptionDate, animalID);
        }

        public void CreateSurrender(int animalID, DateTime surrendedDate){ //This is when a person comes to surrender their animal to Woodrock Animal Rescue
            SurrenderedAnimals.Add(surrendedDate, animalID);
        }

        public void AddOwnedAnimal(int animalID) //Adds the animalID of the animal that is OWNED by this user. 
        {
            int ownedAnimalsAmnt = ownedAnimals.Length();    //H going to make it a list to handle more and max amount of items

            ownedAnimals[ownedAnimalsAmnt] = animalID;  //if list this wwill then be solved
        }

        public void RemoveOwnedAnimal(int animalID) //Removes an owned animal from this person list
        {
            for(int k = 0; k < ownedAnimals.Length(); k++){     //same problem will make it a list
                if (ownedAnimals[k] == animalID){
                    if (ownedAnimals[ownedAnimals.Length()-1] != 0){
                        ownedAnimals[k] = ownedAnimals[ownedAnimals.Length() - 1];
                    }else{
                        ownedAnimals[k] = 0;
                    }
                }
            }
        }

        public void RemoveSurrenderedAnimal(int animalID){ //Removes a surrendered animal from the System & DB as the person has either changed their mind or did not surrender the animal in the first place. 
            foreach(int animalID in SurrenderedAnimals){
                SurrenderedAnimals.Clear();
            }
        }

        public void RemoveAdoptedAnimal(int animalID) //Removes an adopted animal from an owner, so if they have changed their mind or did not adopt that animal then the transaction can be reversed
        {
            foreach(int animalID in AdoptedAnimals){
                AdoptedAnimals.Clear();
            }
        }
        

        public override bool Equals(object obj)
        {
            return base.Equals(obj);
        }

        public override int GetHashCode()
        {
            return base.GetHashCode();
        }

        public override string ToString()
        {
            string res = "Client ID: " + this.personID + "Client Name: " + this.personName + " Client Surname: " + this.personSurname;
            return res; 
        }

        #endregion


    }
}
