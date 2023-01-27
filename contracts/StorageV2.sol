// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "./StorageSlot.sol";

contract StorageV2 {
    constructor() {
        // keccak256("dannolan") -> 256
        StorageSlot.getUint256Slot(keccak256("dannolan")).value = 256;
    }
}
