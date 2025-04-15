// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract StudentManager {
    // Define a structure to represent a student
    struct Student {
        uint256 id;             // Student ID
        string name;            // Student Name
        uint256 age;            // Age
        string[] courses;       // Array of enrolled course names (Array inside Struct)
    }

    // Array of all students (Struct inside Array)
    Student[] public students;

    // Mapping from student ID to Student struct for quick lookup (Struct inside Mapping)
    mapping(uint256 => Student) public studentById;

    // Function to add a new student
    function addStudent(
        uint256 _id,
        string memory _name,
        uint256 _age,
        string[] memory _courses
    ) public {
        Student memory newStudent = Student({
            id: _id,
            name: _name,
            age: _age,
            courses: _courses
        });

        students.push(newStudent);            // Store in array
        studentById[_id] = newStudent;        // Store in mapping
    }

    // Get a student's name from the array by index
    function getStudentName(uint256 index) public view returns (string memory) {
        return students[index].name;
    }

    // Get a course name of a student by index
    function getStudentCourse(uint256 index, uint256 courseIndex) public view returns (string memory) {
        return students[index].courses[courseIndex];
    }

    // Add a course to a specific student (by ID)
    function addCourse(uint256 _id, string memory _courseName) public {
        studentById[_id].courses.push(_courseName);

        // Optional: also update in the array
        for (uint i = 0; i < students.length; i++) {
            if (students[i].id == _id) {
                students[i].courses.push(_courseName);
                break;
            }
        }
    }

    // Get total number of students
    function getTotalStudents() public view returns (uint256) {
        return students.length;
    }
}
