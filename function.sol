// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract FunctionTypes {
    uint public a = 213;

    // Public function: Can be accessed from anywhere and modifies 'a' by adding 120 to it
    function publicfunc() public {
        a += 120;
    }

    // Recursive function: Can only be used within the contract and increments 'a' by 100 recursively
    function Recursive(uint n) internal {
        a += 100;
        n--;
        if (n > 1) {
            Recursive(n);
        }
    }

    // External function: Can be called from outside the contract and increments 'a' by 123, then calls Recursive(5)
    function nonRecursive() external {
        a += 123;
        Recursive(5);
        // nonRecursive(); - Not visible, it would cause an error
    }

    // Private function: Can only be used within the contract and increments 'a' by 111, then calls Recursive(2)
    function privatefunc() private {
        a += 111;
        Recursive(2);
        // nonRecursive(); - Error, it would cause an error
    }

    // View function: Does not modify state variables, but can read them. Returns the value of 'a'.
    function readStateOnly() private view returns(uint) {
        uint b = a;
        return b;
    }

    // Pure function: Does not read or write state variables, takes a string parameter and returns the same string.
    function purefunc(string memory apneKaamSeKaam) public pure returns(string memory) {
        return apneKaamSeKaam;
    }
}
