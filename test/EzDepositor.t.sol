// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.24;

import { console2 } from "forge-std/console2.sol";

import "forge-std/Test.sol";

import { EzDepositor, IPrizePool, IERC20 } from "../src/EzDepositor.sol";

/// @dev See the "Writing Tests" section in the Foundry Book if this is your first time with Forge.
/// https://book.getfoundry.sh/forge/writing-tests
contract EzDepositorTest is Test {
    uint256 public mainnetFork;

    EzDepositor ez;
    IPrizePool prizePool = IPrizePool(0xF35fE10ffd0a9672d0095c435fd8767A7fe29B55);

    function setUp() public {
        mainnetFork = vm.createFork(vm.rpcUrl("optimism"));
        vm.selectFork(mainnetFork);
        ez = new EzDepositor();
    }

    /// @dev Test that runs against a fork of Ethereum Mainnet. You need to set `MAINNET_RPC_URL` in your `.envrc`
    function testFork() external {
        deal(address(prizePool.prizeToken()), address(this), 1e18);
        prizePool.prizeToken().approve(address(ez), 1e18);
        ez.contribute(prizePool, address(this), 1e18);
        uint24 openDrawId = prizePool.getOpenDrawId();
        assertEq(prizePool.getContributedBetween(address(this), openDrawId, openDrawId), 1e18);
    }
}
