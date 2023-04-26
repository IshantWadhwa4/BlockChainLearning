// inheritance is get functionality or variables from a contract to child contract we use inheritance
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract common
{
    uint256 public counter;
    function sum_two_valus(int _a, int _b) public pure returns(int){
        return(_a + _b);
    }
}

contract sum is common{
    int values = sum_two_valus(1,43);
}