// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.24;

import { IERC20 } from "openzeppelin/token/ERC20/IERC20.sol";

interface IPrizePool {
    function prizeToken() external view returns (IERC20);
    function contributePrizeTokens(address _prizeVault, uint256 _amount) external returns (uint256);
    function getContributedBetween(address _vault, uint24 _startDrawIdInclusive, uint24 _endDrawIdInclusive) external view returns (uint256);
    function getOpenDrawId() external view returns (uint24);
}
