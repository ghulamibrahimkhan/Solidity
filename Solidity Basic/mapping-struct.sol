// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

contract mapStruct{

    struct employee {
        string name;
        uint salary;
    }
    mapping(uint => employee) public employeeData;

    function setData(uint id,string memory _name,uint _salary) public{
        employeeData[id] = employee(_name,_salary);
    }
}