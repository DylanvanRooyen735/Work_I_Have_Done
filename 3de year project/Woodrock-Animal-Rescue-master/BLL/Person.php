 <? php
abstract class Person{
    private int detailID;
    private string name; 
    private string surname;
    private string cellphone;
    private string email;
    private string personType;

    function _constructor($personTypeParam, $detailsIDParam, $nameParam, $surnameParam, $cellphoneParam, $emailParam){
        $this-> 
        $this->detailsID = $detailsIDParam;
        $this->name = $nameParam;
        $this->surname = $surnameParam;
        $this->cellphone = $cellphone;
        $this->email = $emailParam;
    }

    function _getName(){
        return $this->name;
    }

    function _getSurname(){
        return $this->surname;
    }

    function _getCellphone(){
        return $this->cellphone;
    }

    function _getType()
    {
        return $this->personType;
    }

    function _getEmail(){
        return $this->email;
    }


    abstract function VerifyPerson($usernameParam, $passwordParam, $personArray)
    {
    }

    abstract function AddPerson()
    {}
    abstract function DeletePerson($int)
    {

    }

    abstract function EditPersonalDetails($ID, $name, $surname, $cellphone, $email, $password)
    {
    }





    



}


?>