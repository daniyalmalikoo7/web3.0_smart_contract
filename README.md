# Basic Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, a sample script that deploys that contract, and an example of a task implementation, which simply lists the available accounts.

Try running some of the following tasks:

```shell
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat test
npx hardhat node
node scripts/sample-script.js
npx hardhat help
```

In this app we are connecting a react js application to blockchain.

A smart contract using solidity programming language comes to play to create a contract between the user and the system to create a record of digital transactions made.

### Backend Packages

- npm install --save-dev hardhat @nomiclabs/hardhat-waffle ethereum-waffle chai @nomiclabs/hardhat-ethers ethers

- To create a basic structure for our smartcontract we are going to use hard hat
  Hardhat is ethereum development environment for professionals, and it allows you to run solidity locally.
  WE can test our smart contracts first before deploying it

## Deployment

- Setup a solidity contract
- Add a script to deploy
- setup your hardhat.config.js file
- Run cli npx hardhat run scripts/deploy.js --network ropsten
  This generates an address on which the transaction is deployed to in our case we have saved it in constants.js file in client side
  It also creates a JSON file in smart_contract/artifacts/contracts/Transactions.json which has an "abi" (contract application binary interface) - standard way to interact with contracts in the ethereum ecosystem, both from outside of the blockchain and for contract to contract interactions
- This 'abi' generated in Transactions.json contains all information about our specific smart contract.
