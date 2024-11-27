// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

// Functionality Requirements for METACRAFTERS

// TFT COIN
// Only contract owner should be able to mint tokens
// Any user can transfer tokens
// Any user can burn tokens

contract TFTCoin is ERC20, ERC20Burnable, Ownable {

    constructor(address initialOwner) 
        ERC20("TFTCoin", "TFTC")
        Ownable(initialOwner)  
    {
        
    }

    
    function transfer(address _to, uint256 _value) public override returns (bool) {
        _transfer(msg.sender, _to, _value);
        return true;
    }

    
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
