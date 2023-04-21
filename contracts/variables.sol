// SPDX-License-Identifier: MIT
pragma solidity ^ 0.6.0;

contract variables {
    //comments 
    //integer variable --> signed and unsigned integer 
    //uint = uint256 --> 0.1 KB
    //uint8 --> 0 to 255 --> 0.001 KB

    uint8 age; 
    uint8 height;
    uint128 amount; // if you know fixed amount is required than you can use uint8/16/32/64/256/128 etc
    int balance;

    //string --> bytes & string
    bytes32 name="neeraj"; // if you know its fix than you can use bytes 
    string name1; // if you dont know the value than we should use string

    bytes[50] name2;

    //bool variable  --> true & false
    bool flag = true;

}