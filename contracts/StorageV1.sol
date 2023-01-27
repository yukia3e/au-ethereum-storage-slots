// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract StorageV1 {
    uint256 x = 97; // 0x0
    uint256 y = 56; // 0x1

    // keccak256(key + (base = 0x2))
    mapping(uint => uint) testing; // 0x2

    // keccak256(key + (base = 0x3))
    mapping(uint => uint) testing2; // 0x2

    constructor() {
        // keccak256(0x1 + (base = 0x2))
        testing[1] = 5;
        // keccak256(0x2 + (base = 0x2))
        testing[2] = 6;
        // keccak256(0x3 + (base = 0x2))
        testing[3] = 7;
        // keccak256(0x4 + (base = 0x2))
        testing[4] = 8;
        // keccak256(0x5 + (base = 0x2))
        testing[5] = 9;

        // keccak256(0x21 + (base = 0x2))
        testing[21] = 77;
        // keccak256(0x44 + (base = 0x2))
        testing[44] = 98;

        // keccak256(0x1 + (base = 0x3))
        testing2[1] = 5;
    }
}
