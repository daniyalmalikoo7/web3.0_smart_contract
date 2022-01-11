// solidity is a fairly new programming language used for ethereum blockchain, its a combo of a few languages inspired by js , java , C++, rust
//so its a very versatile language

//Writing first contract

// 2- we also need to have a lisense to get away with the warning we will have

//SPDX-License-Identifier: UNLICENSED

// 1- Start by choosing the version of solidity you want to use by using pragma keyword
pragma solidity ^0.8.0; //we need to write semi-colons at the end

//3- Now that we have the license and the version of solidity, we can create our contract
//This contract is serving a purpose of a class in OOP languages
// in solidity you need to define type of variable at the start

contract Transactions {
    uint256 transactionCount; //1 -a simple number variable which will hold the number of our transactions

    //2- we create an event, and give a name to it..in this case Transfer
    //Thing of this like a function that we are going to emit or call later on
    //This function is going to accept a few parameters

    // EACH ONE OF OUR TRANSACTIONS OR TRANSFERS HAS TO HAVE "ADDRESS FROM (Type variablename), ADDRESS RECIEVER, UINT AMOUNT, STRING MESSAGE
    // UINT256 TIMESTAMP, STRING KEYWORD"
    // This is going to form our event which later on is going to be emitted from somewhere

    event Transfer(
        address from,
        address reciever,
        uint256 amount,
        string message,
        uint256 timestamp,
        string keyword
    );

    //3- Similar to event, we can create a STRUCT (STRUCTURE) and give it a name in this case TransferStruct
    // Its going to be similar to an OBJECT, but we dont declare this object here, we just define what properties this object have
    // and what types they are going to be

    struct TransferStruct {
        //(type nameofproperty)
        address sender;
        address reciever;
        uint256 amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    //Now we know what properties does our transfer/transaction needs to have

    //4- we can also define an array of different transactions, because we are going to store all of them

    //transactions:name and TransferStruct[]:typeofArray
    //this means our transactions variable is going to be an array of transferStructures

    TransferStruct[] transactions;

    //since this is a class we have to define the visibility of the specific function like "public/private"
    //memory message is just a message stored in memory of that transaction

    function addToBlockChain(
        address payable reciever,
        uint256 amount,
        string memory message,
        string memory keyword
    ) public {
        transactionCount += 1;
        transactions.push(
            TransferStruct(
                msg.sender,
                reciever,
                amount,
                message,
                block.timestamp,
                keyword
            )
        ); //we want to push a transfer struct, pass in all the params that transfer struct needs
        //first one is the sender and we already have that in the msg object
        // we get msg object immediately whenever we call a spevific funciton in the blockchain

        emit Transfer(
            msg.sender,
            reciever,
            amount,
            message,
            block.timestamp,
            keyword
        ); //This event emits and makes the actual transfer
    }

    //This function will have a public visibility and will return and arrayy of transferStruct structured objects
    function getAllTransactions()
        public
        view
        returns (TransferStruct[] memory)
    {
        return transactions;
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}
