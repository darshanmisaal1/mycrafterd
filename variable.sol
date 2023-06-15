// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionLab {
    // State Variables: These variables are permanently stored in the contract
    uint public a;
    uint public b;
    address public k;

    constructor(uint _a, uint _b) {
        a = _a;  // Initializing the state variables with provided values
        b = _b;
    }

    function sumFunc() private view returns(uint c) {
        return a + b;  // Private function that calculates the sum of a and b
    }

    function calc() internal view returns(uint) {
        uint d = sumFunc();  // Internal function that calls the private sumFunc() and returns its result
        return d;
    }

    function payableFunc() public payable returns(uint) {
        // payableFunc() can receive Ether along with the function call
        // The amount of Ether received is stored in the 'msg.value' variable
        uint amount = msg.value;
        return amount;  // Returns the amount of Ether received
    }
}
