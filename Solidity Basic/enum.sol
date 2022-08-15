// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

contract enumContract{
    enum will{yes,no,maybe}

    will public status = will.yes;

    function answer() view public returns(string memory){
        string memory x;
        if(status == will.yes){
            x = "yes";
        }
        else{
            x = "no";
        }
            return x;
    }
    function changeAnswer() public{
        status = will.no;
    }
}