# ETH-AVAX-project3
## Start
This Solidity code defines a custom ERC20 token contract named AkashToken, which is built on the OpenZeppelin ERC20 and Ownable contracts. The contract owner is the only one who may mint more tokens to designated addresses; tokens are originally minted to the contract itself. Users can also move tokens to different addresses and burn their tokens. A number of safety inspections are included in the contract to guarantee proper burn and transfer procedures.
### Description
The AkashToken Solidity contract implements a custom ERC20 token using the OpenZeppelin ERC20 and Ownable libraries. It initializes the token with a name and symbol, and mints an initial supply of tokens to the contract's address. The contract owner has the exclusive ability to mint new tokens to specified addresses, while all users can burn their own tokens and transfer tokens to others. The Tokenminted function ensures only the owner can transfer tokens from the contract to other addresses, while the burnToken and SendToken functions allow users to burn and transfer tokens, respectively. The contract includes various safeguards to ensure proper and secure token management.
##### Author
Akash Singh
