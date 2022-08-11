// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract firstContract {
    uint256 favNumber;
    string name;
    address owner;

    constructor(string memory _name,uint256 _favNumber){
    favNumber = _favNumber;
    name = _name;
    owner = msg.sender;
    }

    //Getters
    function getName()external view returns(string memory){
        return(name);
    }
    function getfavNumber()external view returns(uint256){
        return(favNumber);
    }
    function ownerAddress()external view returns(address){
        return(owner);
    }

    //Seters
    function setName(string memory _name)external{
        name = _name;
    } 
    function setNumber(uint256 _favNumber)external{
        favNumber = _favNumber;
    } 
    function setAddress(address changeAdress)external{
        owner = changeAdress;
    }

    // Transfer ownership
    function transferOwnership(address newOwner) payable external {
        require(owner == msg.sender,"Access denied only owner has rights");
        owner = newOwner;
    }

    // Withdraw Funds
    function withdrawFunds(address beneficiary, uint256 amount)external payable{
        uint256 currentBalance = address(this).balance;
        require(currentBalance > amount);
        payable(beneficiary).transfer(amount);

    }

    // check contract balance
    function getBalance() external view returns(uint256){
        uint256 currentBalance = address(this).balance;
        return(currentBalance);
    }

    // Transfering funds in contract by set message
    function DonationMessage(string memory contributionMsg) payable external{
        require(msg.value > 10,"Huiii you are poor :(");
        name = contributionMsg;
    }

    // Sum
    // ADDITION
    function add(uint256 var1, uint256 var2)external pure returns(uint256){
        uint256 sum = var1 + var2;
        return(sum);
    }
}