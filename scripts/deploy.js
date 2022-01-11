const main = async () => {
  //This generates the instance of the specific contract mentioned
  const Transactions = await hre.ethers.getContractFactory("Transactions");

  const transactions = await Transactions.deploy();

  await transactions.deployed();

  console.log("Transactions deployed to:", transactions.address);
};

//This function is going to execute main function and deploy our contract
const runMain = async () => {
  try {
    await main();
    process.exit(0); //means process went successful
  } catch (e) {
    console.error(error);
    process.exit(1); //means there was an error in the process
  }
};

runMain();

//By running the script our transactions are going to be deployed, and then we are going to get the address of our smartcontract deployed on blockchain network
//But for it to be deployed we need to have some ethereum on our own wallet already
//Because everything you do on the ethereum network requires some thing known as (gas)
//gas is small fractions of ethereum used to make something happen on the ethereum network

//we need to have a test ethereum to fund the gas for the deployment of our contract
//get your test ethereum online through robsten testnet faucet or you may've many other faucets to get ethereum for testing

//Got my ethereum through faucet test network
//AlchemyApi => is going to help us with blockchain development (help us deploy our smartcontract to blockchain)
