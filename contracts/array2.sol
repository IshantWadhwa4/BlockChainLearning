// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Array2{

    // we have two type of arrays array fixed length and with non fixed length
    string [20] name;
    uint8 [20] age;

    function SetName(uint8 _index, string memory _name) public {
        name[_index] = _name;
    }

    function GetName(uint8 _index) public view returns(string memory){
        return name[_index];
    }

    // we have non fixed array

    uint128[] phoneNunber;

    function setPhoneNumber(uint128 _phoneNumber) public {
        phoneNunber.push(_phoneNumber);
    }

     function getPhoneNumber(uint8 _index) public view returns(uint128){
        return phoneNunber[_index];
    }

}
