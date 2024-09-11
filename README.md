# EzDepositor

Easily contribute directly to PoolTogether V5 prize pools.

Want to pump vaults?  Contribute prizes to the prize pool on their behalf.

---

Deployed on Optimism and verified on Etherscan at  [0x68A100A3729Fc04ab26Fb4C0862Df22CEec2f18B](https://optimistic.etherscan.io/address/0x68A100A3729Fc04ab26Fb4C0862Df22CEec2f18B#writeContract)

[Prize Pool on Optimism](https://optimistic.etherscan.io/address/0xF35fE10ffd0a9672d0095c435fd8767A7fe29B55)

---

Deployed on Base and verified on Etherscan at  [0x4E30C0a8cCE76940D87ae62EB12f3Ac536A996F4](https://basescan.org/address/0x4e30c0a8cce76940d87ae62eb12f3ac536a996f4#writeContract)

[Prize Pool on Base](https://basescan.org/address/0x45b2010d8A4f08b53c9fa7544C51dFd9733732cb)

---

Deployed on Arbitrum and verified on Etherscan at  [0x5f9292672e33B76b70Dea44163c780376B4da397](https://arbiscan.io/address/0x5f9292672e33b76b70dea44163c780376b4da397#writeContract)

[Prize Pool on Arbitrum](https://arbiscan.io/address/0x52e7910c4c287848c8828e8b17b8371f4ebc5d42)

---

Deployed on Ethereum Mainnet and verified on Etherscan at  [0x84882EB46dA981d1aD2f154359061942Ca1c062f](https://etherscan.io/address/0x84882eb46da981d1ad2f154359061942ca1c062f#writeContract)

[Prize Pool on Ethereum](https://etherscan.io/address/0x7865d01da4c9ba2f69b7879e6d2483ab6b354d95)

--

Deployed on Scroll Mainnet and verified on Etherscan at [0xbdf6bd9bde192861bd8e0e0a11dad71f178a34c8](https://scrollscan.com/address/0xbdf6bd9bde192861bd8e0e0a11dad71f178a34c8#writeContract)

[Prize Pool on Scroll](https://scrollscan.com/address/0xa6ecd65c3eecdb59c2f74956ddf251ab5d899845)

---

Deployed on Gnosis Mainnet and verified on Etherscan at [0x69fc8095b949c0ff703ead99bf7d6620843c37ef](https://gnosisscan.io/address/0x69fc8095b949c0ff703ead99bf7d6620843c37ef#writeContract)

[Prize Pool on Gnosis](https://gnosisscan.io/address/0x0c08c2999e1a14569554eddbcda9da5e1918120)

---

## Contributing Prizes

1. First approve prize token spending by the EzDepositor. 
  - [WETH on Optimism](https://optimistic.etherscan.io/token/0x4200000000000000000000000000000000000006#writeContract#F1)
  - [WETH on Base](https://basescan.org/token/0x4200000000000000000000000000000000000006#writeContract)
  - [WETH on Arbitrum](https://arbiscan.io/address/0x5f9292672e33b76b70dea44163c780376b4da397#writeContract)
  - [WETH on Ethereum](https://etherscan.io/address/0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2#writeContract)
  - [WETH on Scroll](https://scrollscan.com/address/0x5300000000000000000000000000000000000004)
  - [WXDAI on Gnosis](https://gnosisscan.io/address/0xe91D153E0b41518A2Ce8Dd3D7944Fa863463a97d)
2. Call `contribute()` with the prize pool address, your desired vault address, and the amount of WETH you want to contribute.

## Development

### Installation

You may have to install the following tools to use this repository:

- [Foundry](https://github.com/foundry-rs/foundry) to compile and test contracts
- [direnv](https://direnv.net/) to handle environment variables
- [lcov](https://github.com/linux-test-project/lcov) to generate the code coverage report

Install dependencies:

```
npm i
```

### Env

Copy `.envrc.example` and write down the env variables needed to run this project.

```
cp .envrc.example .envrc
```

Once your env variables are setup, load them with:

```
direnv allow
```

### Compile

Run the following command to compile the contracts:

```
npm run compile
```

### Coverage

Forge is used for coverage, run it with:

```
npm run coverage
```

You can then consult the report by opening `coverage/index.html`:

```
open coverage/index.html
```

### Code quality

[Husky](https://typicode.github.io/husky/#/) is used to run [lint-staged](https://github.com/okonet/lint-staged) and tests when committing.

[Prettier](https://prettier.io) is used to format TypeScript and Solidity code. Use it by running:

```
npm run format
```

[Solhint](https://protofire.github.io/solhint/) is used to lint Solidity files. Run it with:

```
npm run hint
```

### CI

A default Github Actions workflow is setup to execute on push and pull request.

It will build the contracts and run the test coverage.

You can modify it here: [.github/workflows/coverage.yml](.github/workflows/coverage.yml)

For the coverage to work, you will need to setup the `MAINNET_RPC_URL` repository secret in the settings of your Github repository.
