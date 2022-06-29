const { ethers } = require("hardhat");

async function main() {

    const [owner] = await ethers.getSigners();
    const TOKEN = await hre.ethers.getContractFactory("simpleToken")
    const token = await TOKEN.deploy("simple token", "ST", "10000000000000000000000000000")

    console.log(token.address)
}

main();