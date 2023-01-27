const hre = require("hardhat");
const { keccak256, toUtf8Bytes} = hre.ethers.utils;

const addr = "0xa513E6E4b8f2a923D98304ec87F64353C4D5C853";

async function lookup_v2() {
    const slot = keccak256(toUtf8Bytes("dannolan"));
    const value2 = await hre.ethers.provider.getStorageAt(addr, slot);
    console.log(parseInt(value2));
}

lookup_v2();