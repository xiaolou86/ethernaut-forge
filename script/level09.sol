// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../instances/Ilevel09.sol";

contract POC is Script {

    King level9 = King(payable(0x397Bb948BE20486e9165Ac86E9a37e4A3EB169bb));

    function run() external{
        console.log("King is :", level9._king());
    }
}

