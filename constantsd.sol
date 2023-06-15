// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract Constants {
    /* Constants
    - Used to reduce execution gas cost compared to variables
    - By naming convention, they are written in CAPITAL LETTERS
    */

    // A constant address with the value 0xEe9e22b3C8c22C0E62BD2fa5a1c78992D00be672
    address public constant MY_ADDRESS = 0xEe9e22b3C8c22C0E62BD2fa5a1c78992D00be672;

    // A constant string with the value "Darshan Misaal"
    string public constant name = "Darshan Misaal";
}

contract VariableGas {
    // A variable address with the initial value 0xEe9e22b3C8c22C0E62BD2fa5a1c78992D00be672
    address public my_address = 0xEe9e22b3C8c22C0E62BD2fa5a1c78992D00be672;

    // A variable string with the initial value "Darshan Misaal"
    string public userName = "Darshan Misaal";
}
