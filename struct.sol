// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

struct student{
    uint rollNo;
    string name;
}

contract structContract{
    student public s1;
    student s2;
    student s3;

    constructor(uint _rollNo, string memory _name){
        s1.rollNo = _rollNo;
        s1.name = _name;
    }

    function change(uint _rollNo, string memory _name) external{
        student memory update = student({
            rollNo : _rollNo,
            name : _name
        });
        s1 = update;
    }

}