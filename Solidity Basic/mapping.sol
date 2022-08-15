// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

contract map{
    mapping(uint => string) public student;

    function setter(uint key, string memory value)public{
        student[key] = value;
    }
}