require("dotenv").config();

/**
 * @type import('hardhat/config').HardhatUserConfig
 **/
require("@nomiclabs/hardhat-ethers");
const { API_URL, PRIVATE_KEY } = process.env;
module.exports = {
  solidity: {
    version: "0.8.20",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200,
      },
    },
  },
  defaultNetwork: "sepolia",
  networks: {
    hardhat: {},
    sepolia: {
      url: `https://eth-sepolia.g.alchemy.com/v2/Az3evTgdeESS7z8Y-1YVM_3qJ8i_lJkn`,
      account: [PRIVATE_KEY],
    },
  },
};