const hre = require("hardhat");
const { keccak256, toUtf8Bytes} = hre.ethers.utils;

const addr = "0x8A791620dd6260079BF849Dc5567aDC3F2FdC318";

async function lookup() {
    const storage = await hre.ethers.getContractAt("Storage", addr);

    await storage.check();
}

lookup();