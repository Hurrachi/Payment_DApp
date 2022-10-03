// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

/* Smart Contract For Transactions
Event Transfer, Identifies Two Parties, Sends A Message, Logs A Timestamp
Struct Transfer, Defines what properties the transaction needs to have
TransferStruct is an object and an Array of everything listed
Transactions.push pushes the transfer to the Blockchain

In a recent release (v0.4.21 at 8th March 2018),
`emit` keyword has been introduced to emit the event.
This will help to differentiate the functions from event which was
one of the reason of TheDAO Hack which led to
hard fork in Ethereum & gave birth to Ethereum Classic.
*/
contract Transactions {
    uint256 transactionCount;

    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp,  string account, string keyword);

    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string account;
        string keyword;
    }

    TransferStruct[] transactions;

    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        transactionCount += 1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }
// Returns TransferStruct AKA an array
    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }
// Returns The Number Variable
    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}