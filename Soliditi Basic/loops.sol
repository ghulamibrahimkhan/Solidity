// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

contract loops{

    // While Loop
    uint[3] public whileArr;
    uint public counter;
    function loop() external{
        while(counter < whileArr.length){
        whileArr[counter] = counter;
        counter++;
        }
    }

    // For Loop
    uint[5] public forArr;
    // uint count;
    function forLoop() public{
        for(uint i=0; i < forArr.length; i++){
            forArr[i] = i+1;
        }
    }

    // Do While
    uint[4] public dowArr;
    uint x = 4;
    function doWhile() public{
    do{
        dowArr[x] = x;
        x++;
    }
    while(x < dowArr.length);

    }
}