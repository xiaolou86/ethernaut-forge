// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Forced{
    constructor () public payable {
        selfdestruct(payable(0x4cb476890fdE2e05E6Bc99e7971E96984B60e723));
    }
}

