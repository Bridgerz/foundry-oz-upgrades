// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract Example is UUPSUpgradeable, OwnableUpgradeable {
    uint256 public value;

    function setValue(uint256 _value) public {
        value = _value;
    }

    function initialize(uint256 _value) external initializer {
        value = _value;
    }

    function _authorizeUpgrade(address) internal override onlyOwner {}
}
