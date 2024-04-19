// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.24;

import { IPrizePool, IERC20 } from "./external/IPrizePool.sol";
import { SafeERC20 } from "openzeppelin/token/ERC20/utils/SafeERC20.sol";

contract EzDepositor {
    using SafeERC20 for IERC20;

    function contribute(IPrizePool prizePool, address vault, uint256 amount) external {
        IERC20 prizeToken = prizePool.prizeToken();
        prizeToken.safeTransferFrom(msg.sender, address(prizePool), amount);
        prizePool.contributePrizeTokens(vault, amount);
    }
}
