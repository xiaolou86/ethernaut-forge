pragma solidity ^0.6.0;

import "../instances/Ilevel00.sol";
import "forge-std/Script.sol";

contract Attacker is Script {
    //Instance level0 = Instance(0x879A7D9b82862eba53B2B5294CADd808630060B4);
    Instance level0 = Instance(0xE8c89D9091bf823Ac06464e78889AbC5Df75Eab7);

    function run() external{
        vm.startBroadcast();

        level0.password(); // query password to verify
        level0.authenticate(level0.password()); //call authenticate function with the password

        vm.stopBroadcast();
    }

}

