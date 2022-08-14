// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

contract ifelse{
     function ifel(int x) pure public returns(string memory){
         string memory value;
         if(x < 10){
             value = "X is less than 10 ";
         }
         else if(x == 10){
             value = "X is equals to 10";
         }
         else{
             value = "X is greater than 10";
         }
         return value;

     }
}