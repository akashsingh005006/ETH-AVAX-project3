# AkashToken

## Description

The `AkashToken` Solidity contract implements a custom ERC20 token using the OpenZeppelin ERC20 and Ownable libraries. It initializes the token with a name and symbol, and mints an initial supply of tokens to the contract's address. The contract owner has the exclusive ability to mint new tokens to specified addresses, while all users can burn their own tokens and transfer tokens to others. The Tokenminted function ensures only the owner can transfer tokens from the contract to other addresses, while the burnToken and SendToken functions allow users to burn and transfer tokens, respectively. The contract includes various safeguards to ensure proper and secure token management.


## Getting Started

### Installation

To interact with `DegenToken`:

1. **Set up Remix**
   - Visit [Remix](https://remix.ethereum.org/).
   - Create a new Solidity file, e.g., `module3project.sol`.

2. **Copy and Paste Code**
   - Insert the contract code into `module3project.sol`.

3. **Compile and Deploy**
   - Compile the code using the "Solidity Compiler" tab.
   - Deploy the contract using the "Deploy & Run Transactions" tab.

     ### Contract Code

```solidity

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract AkashToken is ERC20, Ownable {
    constructor() ERC20("Token", "ETH+AVAX") Ownable(msg.sender) {
          _mint(address(this), 10 * 10 **decimals());
    }

    function Tokenminted(address to, uint256 value) public onlyOwner {
    require(balanceOf(address(this)) > value,"insufficient");
   require(value>0," transferring amount should > 0");
       _transfer(address(this), to, value);
    }

    function burnToken(uint256 amount) public {
      require(amount>0,"amont > 0");
       _burn(msg.sender, amount);
    
    }
    
  function SendToken(address to, uint256 amount) public  returns (bool) {
    require(to != address(0), "Cannot transfer to zero address");
    require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _transfer( msg.sender,to, amount);
        return true;
    }

}

## Usage

### Minting Tokens

Only the contract owner can mint new tokens.

```solidity
 function Tokenminted(address to, uint256 value) public onlyOwner {
    require(balanceOf(address(this)) > value,"insufficient");
   require(value>0," transferring amount should > 0");
       _transfer(address(this), to, value);
    }
```

```
### Burning Tokens
Burn tokens, from the caller's balance.

```solidity
 function burnToken(uint256 amount) public {
      require(amount>0,"amont > 0");
       _burn(msg.sender, amount);
    
    }
```

### Transferring Tokens
Transfer tokens to another address.

```solidity
function SendToken(address to, uint256 amount) public  returns (bool) {
    require(to != address(0), "Cannot transfer to zero address");
    require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _transfer( msg.sender,to, amount);
        return true;
    }
```


## Authors
Akash Singh

## License

This project is licensed under the MIT License - see the LICENSE.md file for details


