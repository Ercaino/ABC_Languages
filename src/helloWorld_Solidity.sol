// SPDX-License-Identifier: MIT
// Language: Solidity
// Purpose: A smart contract that returns "Hello, World!"
// Requirements: Solidity Compiler (solc) or Remix IDE
// Execution: 
//   1. Deploy the contract to an Ethereum-compatible network
//   2. Call the 'greet' function

pragma solidity ^0.8.0;

contract HelloWorld {
    /**
     * @dev Returns the string "Hello, World!"
     */
    function greet() public pure returns (string memory) {
        return "Hello, World!";
    }
}
