// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// here we learn 3 thing
// 1. State variable
// 2. Local variable
// 3. pure and view
contract local{
        uint amount; //this will go in blockchain state variable

        // 1. view will get value from blockchain and return
        // 2. pure will not get any value from block chain(no connection with block chain)
        function getAmount() public pure returns(uint){
            uint value = 1; // local variable declare in function used in function
            return(value);
        }

        // Globle variables
        // some variable allready define by solidity like msg.sender,msg.value

        function globle_Variable() public payable returns(address,uint){
            return(msg.sender,msg.value);
        }
}