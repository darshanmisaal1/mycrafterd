// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

// Mapping stores key-value pairs like a dictionary in Python
contract Mapping {
    mapping(address => uint) public accBalance; // Key: address, Value: uint
    mapping(address => mapping(address => bool)) isFriend; // Nested mapping

    function operations() external {
        // Set the account balance for the caller's address
        accBalance[msg.sender] = 1234;

        // Retrieve the account balance for the caller's address
        uint bal1 = accBalance[msg.sender];

        // Retrieve the account balance for address(1) (returns default value 0)
        uint bal2 = accBalance[address(1)];

        // Update the account balance for the caller's address
        accBalance[msg.sender] += 8765;

        // Delete the account balance for the caller's address and the bal1 variable
        delete accBalance[msg.sender];
        delete bal1;

        // Delete the account balance for address(1) and the bal2 variable
        delete accBalance[address(1)];
        delete bal2;

        // Set the isFriend mapping value for the caller's address and this contract's address
        isFriend[msg.sender][address(this)] = true;
    }
}
