// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;
import "./Organization.sol";

contract FactoryOrg {
    mapping(address => address) ownerToOrganization;
    mapping(address => address[]) userToOrganizations;
    mapping(address => bool) isChild;

    modifier validChild() {
        require(isChild[msg.sender] == true, "NOT A VALID CHILD");
        _;
    }

    constructor() {}

    function createOrganization(
        string memory name,
        string memory symbol,
        uint256 initialSupply,
        address tokenContract
    ) external {
        Organization newOrganization = new Organization(
            name,
            symbol,
            initialSupply,
            tokenContract,
            address(this),
            address(msg.sender)
        );
        ownerToOrganization[msg.sender] = address(newOrganization);
        isChild[address(newOrganization)] = true;
    }

    function registerUser(address user) external validChild {
        userToOrganizations[user].push(msg.sender);
    }

    function getOrganization(address newOwner) external view returns (address) {
        require(address(newOwner) != address(0), "address Zero");
        address org = ownerToOrganization[newOwner];
        return org;
    }

    function getUserVests(
        address user
    ) external view returns (address[] memory) {
        require(address(user) != address(0), "address Zero");
        return userToOrganizations[user];
    }
}
