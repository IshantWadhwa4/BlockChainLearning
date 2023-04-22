// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LearnAddress{
    address owner = 0x5c6B0f7Bf3E7ce046039Bd8FABdfD3f9F5021678;
    // address is identity for smart contract

    // payable help Sc to transfer/reseve/hold the ETH
    function getEther() public payable{}

    function sendEther(address _to, uint ethers) public {
        payable(_to).transfer(ethers);
    } 

    function getSCBalance() public view returns(uint){
        return address(this).balance;
    }
}
