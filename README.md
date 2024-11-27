# Smart Contract Project - TFTCoin ERC-20 Token with Minting, Burning, and Transferring 

This smart contract demonstrates basic functionality for an ERC-20 token, including minting, burning, and transferring tokens. It allows users to interact with the TFTCoin system to manage their tokens. The contract includes error handling to ensure the correct behavior when interacting with the system.


## Description

his project is a simple Ethereum smart contract designed to manage the TFTCoin ERC-20 token. The contract allows users to:

* Mint Tokens: Only the contract owner can mint new tokens and send them to a specified address.
* Burn Tokens: Any user can burn (destroy) tokens from their own balance.
* Transfer Tokens: Any user can transfer tokens to another address.
* Check Token Balance: Lets users check their token balance..

## Getting Started

### Installing

1. Visit Remix IDE:

* Go to https://remix.ethereum.org in your web browser. Remix is a browser-based IDE, so there is no need for any installation.

2. Create a New File:

* In Remix, create a new Solidity file, for example, ExampleContract.sol.
* Copy the provided smart contract code into this file.

### Executing program

1. Compile the Contract:

* In Remix IDE, navigate to the Solidity Compiler tab (icon on the left panel).
* Select the appropriate version (0.8.x) in the compiler dropdown.
* Click Compile ERC20_TFT.sol

2. Deploy the Contract:

* Navigate to the Deploy & Run Transactions tab (Ethereum icon).
* Set the environment to Remix VM (Cancun).
* Enter the initialOwner address (this will be the contract owner address).
* Click Deploy.

3. Interact with the Contract:

* After deployment, you’ll see the contract listed under Deployed Contracts.
* Expand the contract to interact with the functions (Mint Tokens, Burn Tokens, Transfer Tokens, Check Token Balance).

# Example of Interactions:

* Mint Tokens:

* Call the mint(address to, uint256 amount) function.
* Enter the address to mint tokens to.
* Enter the amount (e.g., 100000000000000000000 for 100 tokens, considering 18 decimal places).
* Only the owner can execute this function.

* Transfer Tokens:

* Call the transfer(address to, uint256 amount) function.
* Enter the recipient’s address and the amount of tokens to transfer.

* Burn Tokens:

* Call the burn(uint256 amount) function to burn tokens from your own balance.
* Enter the amount to burn.

* Check Token Balance:

* Call the balanceOf(address account) function to view your or any address's token balance.

# Testing and Debugging

* Revert Errors:
* If the contract fails, check for revert errors such as:

* "Only the owner can mint tokens." (when attempting to mint tokens by a non-owner).
* "Insufficient balance to transfer." (if the sender does not have enough tokens).

* Assertion Failures:

If you encounter an assertion failure, it means there’s an issue with internal contract consistency (e.g., invalid token balance).

* Require Failures:

Look out for require errors such as:

* "Only the owner can mint tokens." (in mint()).
* "You don't have enough tokens to burn." (in burn()).

## Help

If you encounter issues while running the contract, you can check the Remix IDE console for transaction logs and error messages.

For common troubleshooting, check the following:

* Ensure that you're using valid addresses.
* Ensure the contract owner is calling the mint() function.
* Use the Remix console to view logs for failed transactions and contract errors.

# Authors

Allen Shoji C. Takahashi 202111055@fit.edu.ph - BSCSSE - FEU Institute of Technology

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
