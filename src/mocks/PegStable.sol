// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {MockERC20} from "solmate/src/test/utils/mocks/MockERC20.sol";

contract PegStable is MockERC20 {
    constructor(string memory name_, string memory symbol_)
        MockERC20(name_, symbol_, 18)
    {}
}

