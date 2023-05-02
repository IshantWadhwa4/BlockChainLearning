// function has same name but different perameters called function overloading
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Overloading{
    string name;
    uint8 age;
    string gender;

    function SetDetails(string memory _name,uint8 _age,string memory _gender) public {
        name = _name;
        age = _age;
        gender = _gender;
    }

    function SetDetails(string memory _name,uint8 _age) public {
        name = _name;
        age = _age;
    }
}