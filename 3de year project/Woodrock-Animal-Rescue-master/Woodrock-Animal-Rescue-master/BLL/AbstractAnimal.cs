using System;

namespace Woodrock_Animal_Rescue
{
    public class AbstractAnimal
    {
        string animalname = "Storm"; //The name given to the animal
        string colour; // The colour of the animal/predominant colour/colours, e.g. black and white
        int age; // The age of the animal, automatically updates each year.
        string foodName; //The food brand name/name used to feed that animal, e.g. Montego Senior Classic Dog Food
        float dailyFoodQuantity; //describes the amount of food the animal needs to eat per a day
        float weight; //The weight the animal currently has been measured to be in KG's
        
        
        int animalID; //The unique identifier that identifies the animal in the system

        public string ReturnMessage()
        {
            return animalname;
        }

        public AbstractAnimal(int animalIDParam, string animalNameParam, int ageParam, string foodNameParam, float foodqtyParam, float weightParam){
            this.animalID = animalIDParam;
            this.animalname = animalNameParam;
            this.age = ageParam;
            this.foodName = foodNameParam;
            this.dailyFoodQuantity = foodqtyParam;
            this.weight = weightParam;

        }
    }
}