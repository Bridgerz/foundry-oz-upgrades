// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@forge-std/Test.sol";
import "../contracts/Example.sol";
import {Upgrades} from "@openzeppelin/foundry-upgrades/Upgrades.sol";

contract ExampleTest is Test {
    function testExample() public {
        address proxy = Upgrades.deployUUPSProxy(
            "Example.sol", abi.encodeCall(Example.initialize, (uint256(42)))
        );

        Example example = Example(proxy);
        assertEq(example.value(), 42);
        example.setValue(43);
        assertEq(example.value(), 43);
    }
}
