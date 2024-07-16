# AkashToken(module3project)

## Description

The `AkashToken` Solidity contract implements a custom ERC20 token using the OpenZeppelin ERC20 library. the contract specifies names of token is"Token" and symbol "ETH+AVAX"..The deployer of the contract is designated as the owner and is initially minted 10 tokens. Only the owner can mint additional tokens to specified addresses, ensuring controlled token distribution. The contract also includes a function to burn tokens, allowing any token holder to permanently remove tokens from circulation. Additionally, a function is provided for transferring tokens between addresses, with checks to prevent transfers to invalid addresses and ensure sufficient balances.


## Getting Started

### Installation

To interact with `AkashToken`:

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

contract AkashToken is ERC20 {
       address owner;
    constructor() ERC20("Token", "ETH+AVAX")  {  
         owner = msg.sender;
          _mint(address(this), 10 * 10 **decimals());
    }
    
    modifier onlyowner() {
        require(msg.sender== owner,"Onwer has no access");
        _;
    }

    function Tokenminted(address to, uint256 value) public onlyowner {
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

```


### Usage

### Minting Tokens

Only the contract owner can mint new tokens.

```solidity
 function Tokenminted(address to, uint256 value) public onlyowner {
    require(balanceOf(address(this)) > value,"insufficient");
   require(value>0," transferring amount should > 0");
       _transfer(address(this), to, value);
    }
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

## Help
For common issues or problems, ensure you have the following:

- the compiler version should be adequate .
- Take care of missing semicolons,unexpected tokens.
-  Ensure all Solidity syntax is correct.




## Authors
Akash Singh

## License

This project is licensed under the MIT License - see the LICENSE.md file for details


