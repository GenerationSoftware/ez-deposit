# EzDepositor

Easily contribute directly to PoolTogether V5 prize pools.

Want to pump vaults?  Contribute prizes to the prize pool on their behalf.

Deployed on Optimism and verified on Etherscan at  [0x68A100A3729Fc04ab26Fb4C0862Df22CEec2f18B](https://optimistic.etherscan.io/address/0x68A100A3729Fc04ab26Fb4C0862Df22CEec2f18B#writeContract)

[Prize Pool on Optimism](https://optimistic.etherscan.io/address/0xF35fE10ffd0a9672d0095c435fd8767A7fe29B55)

## Contributing Prizes

1. First WETH approve spending by the EzDepositor.  [WETH on Optimism](https://optimistic.etherscan.io/token/0x4200000000000000000000000000000000000006#writeContract#F1)
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
