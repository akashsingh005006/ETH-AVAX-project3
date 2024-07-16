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
