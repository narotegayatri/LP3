pragma solidity ^0.8.0;
// SPDX-License-Identifier: MIT

contract StudentManagementSystem{

    address owner;

    constructor(){
        owner = msg.sender;
    }

    struct Student{
        uint256 id;
        string fname;
        string lname;
        uint256 marks;
    }

    mapping(uint256=>Student) public StudentRecords;

    uint256 public studentsCount=0;

    modifier onlyOwner{

        require(owner==msg.sender);
        _;
    }

    function addStudent(uint256 _id,string memory _fname,string memory _lname,uint256 _marks) public onlyOwner{
        
        StudentRecords[_id]=Student(_id,_fname,_lname,_marks);
        studentsCount++;

    }

    function addMarks(uint256 _id,uint256 _marks) public onlyOwner{
        Student memory studDetails = StudentRecords[_id];
        studDetails.marks += _marks;
        StudentRecords[_id]=studDetails;
    }


    function substrackMarks(uint256 _id,uint256 _marks) public onlyOwner{
        Student memory studDetails = StudentRecords[_id];
        studDetails.marks -= _marks;
        StudentRecords[_id]= studDetails;
    }

    
}