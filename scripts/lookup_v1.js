const hre = require("hardhat");
const { keccak256, hexZeroPad} = hre.ethers.utils;

const addr = "0x0165878A594ca255338adfa4d48449f69242Eb8F";

async function lookup_v1() {
    const value1 = await hre.ethers.provider.getStorageAt(addr, 0x0);
    console.log(parseInt(value1));

    const key = hexZeroPad(21, 32);
    const baseSlot = hexZeroPad(0x2, 32).slice(2);
    console.log({key, baseSlot});
    
    const slot = keccak256(key + baseSlot);
    const value2 = await hre.ethers.provider.getStorageAt(addr, slot);
    console.log(parseInt(value2));
}

lookup_v1();