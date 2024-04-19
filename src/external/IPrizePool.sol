// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.24;

interface IPrizePool {
    function prizeToken() external view returns (address);
    function contributePrizeTokens(address _prizeVault, uint256 _amount) external returns (uint256);
}
