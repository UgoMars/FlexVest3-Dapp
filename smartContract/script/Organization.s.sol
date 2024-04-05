// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/FactorOrg.sol";
import {FlexToken} from "../src/FlexToken.sol";

contract OrganizationScript is Script {
    FactoryOrg _FactorOrg;
    FlexToken _FlexToken;

    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        _FactorOrg= new FactorOrg();
        _FlexToken = new FlexToken();
        _OrganizationFactory.createOrganization(
            "Flex Vest Token",
            "FVT",
            100000 * 10 ** 18,
            address(_MarsToken)
        );
        vm.stopBroadcast();
    }
}
