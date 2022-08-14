// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

contract arrays{
    // Fized size array
    uint[7]  seven = [1,2,3,4,5,6,7];
    function changeVal(uint index, uint value) external{
        seven[index] = value;
    }

    // Dynamic array
    string[] public names = ["Ibrahim","Sulaman","Osmama"];
    function changeName(uint index,string memory name)external{
        names[index] = name;
    }

    //  Push in Dynamic attar
    function addNames(string memory xyz) external{
        names.push(xyz);
    }
}
