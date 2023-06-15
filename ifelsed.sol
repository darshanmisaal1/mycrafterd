// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Conditional {
    
    function ifElse(uint _x) pure public returns (uint) {
        // If the value of _x is less than 10, return 1
        if (_x < 10) {
            return 1;
        }
        // If the value of _x is less than 20, return 2
        else if (_x < 20) {
            return 2;
        }
        // If none of the above conditions are met, return 3
        return 3;
    }

    function ternary(uint _x) pure public returns (uint) {
        // Ternary operator: If the value of _x is less than 10, return 1, otherwise return 2
        return _x < 10 ? 1 : 2;
    }
}
