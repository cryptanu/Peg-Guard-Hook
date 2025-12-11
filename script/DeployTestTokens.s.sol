// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {Script} from "forge-std/Script.sol";
import {console2} from "forge-std/console2.sol";
import {MockERC20} from "solmate/src/test/utils/mocks/MockERC20.sol";

contract DeployTestTokens is Script {
    function run() external {
        address deployer = vm.envAddress("PEG_GUARD_ADMIN");
        vm.startBroadcast(deployer);

        MockERC20 tokenA = new MockERC20("PegUSD", "PUSD", 18);
        MockERC20 tokenB = new MockERC20("PegEuro", "PEUR", 18);

        tokenA.mint(deployer, 1_000_000 ether);
        tokenB.mint(deployer, 1_000_000 ether);

        console2.log("PegUSD:", address(tokenA));
        console2.log("PegEuro:", address(tokenB));

        vm.stopBroadcast();
    }
}

