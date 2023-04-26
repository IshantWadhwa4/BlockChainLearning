// contractor function is a special function which call once at the time of deployment
// this function is ude to insialize the values 
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract constractorFunction{
     address owner;

     constructor() public{
         owner = msg.sender;
     } 

     function getOwner() public view returns(address){
         return(owner);
     }

     function myAddress() public view returns(address){
         return(msg.sender);
     }

}