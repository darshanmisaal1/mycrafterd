// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Arrays {
    uint[] public dynamicArr = [1, 3, 5]; // An array that can change in length
    uint[3] public fixedArr = [2, 4, 6];  // An array with a fixed length of 3

    uint public len;
  
    function operations() external {
        // Add 9 to the end of the dynamic array: [1, 3, 5, 9]
        dynamicArr.push(9);

        // Change the value at index 3 of the dynamic array to 7: [1, 3, 5, 7]
        dynamicArr[3] = 7;

        // Delete the value at index 3 of the dynamic array: [1, 3, 5, 0]
        delete dynamicArr[3];

        // Remove the last element from the dynamic array: [1, 3, 5]
        dynamicArr.pop();

        // Create a new empty array in memory with a length of 5
        uint[] memory newArray = new uint[](5);
      
        // Store the length of the new array in the 'len' variable
        len = newArray.length;
    }

    // Function to retrieve the dynamic array
    function getDynamicArray() external view returns (uint[] memory) { 
        return dynamicArr;
    }
}
