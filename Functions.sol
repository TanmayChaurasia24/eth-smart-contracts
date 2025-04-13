// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract addnumber {
    uint32 public ans = 0;

    function getsum(uint32 num1, uint32 num2) public returns(uint32) {
        if(num1 < 0 || num2 < 0) {
            return 0;
        } else {
            ans = num1 + num2;
            return ans;
        }
    }

    function getans() public view returns(uint32){
        return ans;
    }
}