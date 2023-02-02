// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../instances/Ilevel26.sol";

contract POC is Script {

     DoubleEntryPoint level26 = DoubleEntryPoint(0x2Ed94c3A567583D36F8AF55D5226a3aE4d847393);
    function run() external{
        vm.startBroadcast();

        level26.forta().setDetectionBot(0x3D502a091C656aD5Bd11F6a1aAf2d1205842478d);

        vm.stopBroadcast();
    }
}

