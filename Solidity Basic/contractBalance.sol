// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

contract balance{
    function payEther() public payable{
    }

    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    function withdrawFunds(address toSend) public{
        uint currentBal = address(this).balance;
        payable(toSend).transfer(currentBal);
    }
}