// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {Script} from "forge-std/Script.sol";
import {console2} from "forge-std/console2.sol";

import {PegStable} from "../../src/mocks/PegStable.sol";

contract DeployMockTokens is Script {
    function run() external {
        address deployer = vm.envAddress("PEG_GUARD_ADMIN");

        vm.startBroadcast(deployer);

        PegStable token0 = new PegStable("PegGuard Stable", "PGUSD");
        console2.log("PGUSD:", address(token0));

        PegStable token1 = new PegStable("PegGuard Hedge", "PGH");
        console2.log("PGH:", address(token1));

        vm.stopBroadcast();
    }
}

