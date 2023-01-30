// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../instances/Ilevel18.sol";

contract POC is Script {

    MagicNum level18 = MagicNum(0x5a61cCedD1e257cE6B1aB3e115756eA61e5cAECB);
    function run() external{
        vm.startBroadcast();
        bytes memory code = "\x60\x0a\x60\x0c\x60\x00\x39\x60\x0a\x60\x00\xf3\x60\x2a\x60\x80\x52\x60\x20\x60\x80\xf3";
        address solver;

        assembly {
            solver := create(0, add(code, 0x20), mload(code))
        }
        level18.setSolver(solver);
        vm.stopBroadcast();
    }
}




