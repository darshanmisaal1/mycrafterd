// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ForAndWhileLoops {
    uint public i = 0;

    function loops() external {
        uint a = 0;

        // For loop that iterates from 0 to 9
        for (uint j = 0; j < 10; j++) {
            if (j == 3) {
                continue; // Skip the rest of the loop and continue with the next iteration
            } else if (j == 5) {
                break; // Exit the loop completely
            }

            a++;
        }

        // Infinite while loop with a break condition
        while (true) {
            if (a == 100) {
                break; // Exit the loop when a is equal to 100
            }
            a++;
        }

        i = a; // Update the value of i with the final value of a
    }
}
