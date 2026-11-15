// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentData {

    struct Student {
        uint256 id;
        string name;
        uint8 age;
    }

    Student[] public students;

    function addStudent(uint256 _id, string memory _name, uint8 _age) public {
        students.push(Student(_id, _name, _age));
    }

    function getStudent(uint256 _index) public view returns (uint256, string memory, uint8) {
        require(_index < students.length, "Student does not exist.");
        Student memory s = students[_index];
        return (s.id, s.name, s.age);
    }

    fallback() external payable {}

    receive() external payable {}
}
