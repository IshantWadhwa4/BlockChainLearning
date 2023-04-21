// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract arraySample{
   //array --> fixed and dynamic 
   //fixed length array 

//age[0]=38, age[1]=45,.............age[34]=65
 uint8[35] age;
 int[35] salary; 

   function setData(uint8 _index, uint8 _value) public {
       age[_index]= _value;
   }

   function readData(uint8 _index) public view returns(uint8){
       return age[_index];
   }

   //dynamic array 
   //phoneNUmber[0]=68888, phoneNUmber[1]=8976740........
   uint[] phoneNumber;  // if i dont know the how much values are in array 

   function setDataForDynamicArray(uint _phoneno) public {
       phoneNumber.push(_phoneno);
   }

   function readDynamicArray(uint _index) public view returns(uint){
       return phoneNumber[_index];
   }
}