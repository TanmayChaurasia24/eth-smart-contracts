// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 myNumber = 1; // 256 defines the number of bits uint or int can use to represent the number and default is 256 for both int and uint
    bool hasFavnumber = true; // or false
    string favColor = "blue";
    int256 favNumber = -409; // int can be -ve but uint can only have positive numbers as it defines unsigned interger
    address myaddress = 0x8b60ECe88c5D712216B71c594aFaD08912Ae5C5d; // special data type for storing address also we can store it in string but sol provides diff data type for this.
    bytes32 myByte = "cat";

    uint256 defValue;// def value is 0
    address[] users; // stores an array of addresses which are all zero
}