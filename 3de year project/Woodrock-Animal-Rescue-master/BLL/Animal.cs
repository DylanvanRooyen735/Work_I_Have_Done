using System;
using System.Collections.Generic;
using System.Text;
using Woodrock_Animal_Rescue.DAL;
using System.Collections;


namespace Woodrock_Animal_Rescue
{
    public class Animal
    {

        #region Properties

        private int animalID; //The unique identifier that identifies the animal in the system, the microchip of the animal. //
        private string animalType; // defines the animal type such as bird, dog, cat, etc.
        private string animalBreed; //Only applies to dos, classifies dog breed.
        private string animalGender; // Defines the gender of the animal, which can help with sterlisation costs, pairing, etc.
        private string animalname = "Storm"; //The name given to the animal
        private string colour; // The colour of the animal/predominant colour/colours, e.g. black and white
        private int age; // The age of the animal, automatically updates each year.
        private string foodName; //The food brand name/name used to feed that animal, e.g. Montego Senior Classic Dog Food
        private double dailyFoodQuantity; //describes the amount of food the animal needs to eat per a day
        private double weight; //The weight the animal currently has been measured to be in KG's
        private string admissionDate; // the date the animal was put into the woodrock system
        private string status; // describes if the animal was found/surrenderred/has an owner. 
        private Dictionary<int, string>  MedicalHistory ; // Describes the medical happening ID occured, and what occurred.        
        private bool adopted; // This determines whether an animal has been adopted or not, IF the animal can be adopted and is not owned. 

        public int AnimalID { get => animalID; set => animalID = value; }
        public string AnimalType { get => animalType; set => animalType = value; }
        public string AnimalBreed { get => animalBreed; set => animalBreed = value; }
        public string AnimalGender { get => animalGender; set => animalGender = value; }
        public string Animalname { get => animalname; set => animalname = value; }
        public string Colour { get => colour; set => colour = value; }
        public int Age { get => age; set => age = value; }
        public string FoodName { get => foodName; set => foodName = value; }
        public double DailyFoodQuantity { get => dailyFoodQuantity; set => dailyFoodQuantity = value; }
        public double Weight { get => weight; set => weight = value; }
        public string AdmissionDate { get => admissionDate; set => admissionDate = value; }
        public string Status { get => status; set => status = value; }
        public Dictionary<int, string> MedicalHistory1 { get => MedicalHistory; set => MedicalHistory = value; }
        public bool Adopted { get => adopted; set => adopted = value; }

        #endregion Properties


        #region Constructor

        public string ReturnMessage()
        {
            return Animalname;
        }

        public Animal(int animalIDParam, string animalNameParam, int ageParam, string foodNameParam, double weightParam, string genderParam, string statusParam, string dateParam){
            this.AnimalID = animalIDParam;
            this.Animalname = animalNameParam;
            this.Age = ageParam;
            this.FoodName = foodNameParam;
            this.Weight = weightParam;
            this.AnimalGender = genderParam;
            this.Status = statusParam;
            this.AdmissionDate = dateParam;
        }

        #endregion Constructor


        #region Methods & Procedures

        public string getName(){return this.Animalname;} //returns the animals name
        public string getSpecies(){return this.AnimalType;}
        public void setBreed(string breed = ""){
            if(AnimalType == "Dog"){
            this.AnimalBreed = breed;
            }else{
                this.AnimalBreed = "Null";
            }

        }

        public List<string> ListBySpecies(){

        }

        public List<string> ListByBreed(){

        }

        public string AddAnimal(){
            return "The animal has successfully been added to the DB!";
        }

        public string RemoveAnimal(int animalID){
            return "The animal has successfully been removed from the DB";
        }

        public void editAnimal(){

        }

        public string ToString(){

        }

        private float foodQtyCalculaator(){ //Calculates how much food the animal is going to eat daily.

        }

        private void increaseAge(){ //Increases the animal age dependent on a certain date.
            
            this.Age ++; 
        }

        #endregion

    }
}