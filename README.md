# 🏄‍♂️ Quick Start

This project leverages [Foundry](https://github.com/foundry-rs/foundry) to manage dependencies (via soldeer), contract compilation, testing, deployment, and on chain interactions via Solidity scripting.

> **Note**
> The OZ foundry upgrades library uses node to verify upgrade safety. Make sure you have node version 18.17 or higher and npm version 10.4 or higher installed.

#### Environment configuration

Duplicate rename the `.env.example` file to `.env`. You'll need accounts and api keys for **Infura** and **Etherscan** as well as the necessary RPC URLs. Be sure to add the required values in your newly created `.env` file.

#### Dependencies

To install the project dependencies, run:

```bash
forge soldeer update
```

#### Compilation

To compile your contracts, run:

```bash
forge compile
```

#### Testing

```bash
forge test
```

> **Note: In case of "Failed to run upgrade safety validation"**
> Run: `forge clean`

#### Coverage

```bash
forge coverage
```

#### Deployment

```bash
forge script script/deploy_bridge.s.sol --rpc-url <<alias>> --broadcast --verify
```

**Local deployment**

```bash
forge script script/deploy_bridge.s.sol --fork-url anvil --broadcast
```

All deployments are saved in the `broadcast` directory.

#### External Resources

- [Writing OpenZeppelin Upgrades with Foundry](https://github.com/OpenZeppelin/openzeppelin-foundry-upgrades?tab=readme-ov-file)
- [OpenZeppelin Upgrade Requirements](https://docs.openzeppelin.com/upgrades-plugins/1.x/api-core#define-reference-contracts)
