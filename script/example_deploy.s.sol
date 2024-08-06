// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@forge-std/Script.sol";
import {Upgrades} from "@openzeppelin/foundry-upgrades/Upgrades.sol";

import "../contracts/Example.sol";

contract DeployBridge is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        address proxy = Upgrades.deployUUPSProxy(
            "Example.sol", abi.encodeCall(Example.initialize, (uint256(42)))
        );

        vm.stopBroadcast();
    }

    // used to ignore for forge coverage
    function testSkip() public {}
}
