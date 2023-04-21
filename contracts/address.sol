// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Money{
    address prasanth=0x17F6AD8Ef982297579C203069C1DbfFE4348c372;
    //balance --> give you the balance of the address
    //transfer --> used to transfer to the address

    function getMoney() public payable{}

    function TransferMoney() public {

        payable(prasanth).transfer(address(this).balance);
    }
}