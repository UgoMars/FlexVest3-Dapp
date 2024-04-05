# FlexVest3 Dapp

The FlexVest3 is a Fullstack Web3 Decentralized Application. 
The Smart contract is written with [Solidity](https://docs.soliditylang.org/en/v0.8.25/?color=dark) and deployed on the [Sepolia-Ethereum](https://sepolia.etherscan.io/).
The Frontend is built with [NextJs](https://nextjs.org/) and uses [EtherJS](https://docs.ethers.org/v5/) for the Smart contract Integration and Interaction with the Frontend.

The Smart Contract utilizies the factory pattern, so as to optimize the contract deployment, reducing gas costs and simplifying contract management, thereby enhancing the scalability and efficiency of the vesting process for the FlexVest3 Dapp.

## Description

This program is designed to facilitate the creation of vesting plans for various stakeholders within an organization, ensuring that tokens are released according to predefined schedules. 

## Functionalities Implemented

The system includes functionalities for organization registration, stakeholder type specification, address whitelisting, and token claiming post-vesting period.

The contract implements the following features:

- Function that allows an organization to register themselves and their token
- Function that allows an Organization to be able to mention the type of stakeholder and their vesting period.
- Function that Organization should be able to whitelist addresses for certain stakeholders (founders, investors etc.).
- Whitelisted addresses should be able to claim their tokens after the vesting period.

## Demo Video:
https://www.loom.com/share/8afe57f65a06494c861c79720aa06e6a?sid=1db37d14-7194-432a-b6ad-f7978d78830a


## Author

Ugo Mars
[@metacraftersio](https://github.com/UgoMars)

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.