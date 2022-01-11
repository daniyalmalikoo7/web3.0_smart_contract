// https://eth-ropsten.alchemyapi.io/v2/ykXHnUr1m5zF4cSrtt6tRmTdpXGUxtbb

require("@nomiclabs/hardhat-waffle"); //hardhat waffle is a plugin to build smartcontract tests

module.exports = {
  solidity: "0.8.0",
  networks: {
    ropsten: {
      url: "https://eth-ropsten.alchemyapi.io/v2/ykXHnUr1m5zF4cSrtt6tRmTdpXGUxtbb", //AlchemyApi deploy your smartcontract to blockchain
      accounts: [
        "e7613fdde95d0c0089c8122498f441ccceb0e38ad6662f3aeafa506c3daa1ab6", //address of the account we'll use to fund this contract,more specifically the private key generated through metamask for your account
      ],
    },
  },
};
