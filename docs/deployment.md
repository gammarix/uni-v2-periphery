# Deployment

# Deployment

## Process
### Build the UniswapV2Router02 contract
Use this command to build the contract
```bash
forge build src/UniswapV2Router02.sol --use 0.6.6
```

The original `UniswapV2Router02.sol` is set to Solidity version `0.6.6` which is why we have to manually build it.

#### Sample logs
```bash
forge build src/UniswapV2Router02.sol --use 0.6.6
[⠊] Compiling...
[⠆] Compiling 10 files with Solc 0.6.6
[⠰] Solc 0.6.6 finished in 251.97ms
Compiler run successful!
```

## Deploy to testnet
Create a `.env.local` file and add the following information in

```bash
KAIROS_TESTNET_RPC_URL=<insert_RPC_URL>
KAIA_MAINNET_RPC_URL=<insert_RPC_URL>
WALLET_NAME=<insert_foundry_wallet_name>
UNISWAP_V2_FACTORY_ADDRESS=<insert_v2_factory_address>
WETH_ADDRESS=<insert_wklay_address>
```

Make sure to replace the `<insert_RPC_URL>` with your RPC URL from a node provider.

Then use the `makefile` to deploy `UniswapV2Router02.sol` contract by running this command in the terminal

```bash
make deploy-uni-v2-router2-kairos
```

This will run the command `forge create --rpc-url ${KAIROS_TESTNET_RPC_URL} --account ${WALLET_NAME} src/UniswapV2Router02.sol:UniswapV2Router02 --constructor-args ${UNISWAP_V2_FACTORY_ADDRESS} ${WETH_ADDRESS}`

#### Sample logs
```bash
forge create --rpc-url ***** --account dev src/UniswapV2Router02.sol:UniswapV2Router02 --constructor-args ***** *****
[⠊] Compiling...
No files changed, compilation skipped
Enter keystore password:
Deployer: *****
Deployed to: 0xf96BbB746d2E7959Cf3eBC4C361D93768e3e802b
Transaction hash: 0x9139107039eb7fd4cd1a112f6acc589d19127cf3a00812f09e9faef908cefe4a
```

## Deploy to mainnet
Create a `.env.local` file and add the following information in

```bash
KAIROS_TESTNET_RPC_URL=<insert_RPC_URL>
KAIA_MAINNET_RPC_URL=<insert_RPC_URL>
WALLET_NAME=<insert_foundry_wallet_name>
UNISWAP_V2_FACTORY_ADDRESS=<insert_v2_factory_address>
WETH_ADDRESS=<insert_wklay_address>
```

Make sure to replace the `<insert_RPC_URL>` with your RPC URL from a node provider.

Then use the `makefile` to deploy `UniswapV2Router02.sol` contract by running this command in the terminal

```bash
make deploy-uni-v2-router2-kaia
```

This will run the command `forge create --rpc-url ${KAIA_MAINNET_RPC_URL} --account ${WALLET_NAME} src/UniswapV2Factory.sol:UniswapV2Factory --constructor-args ${UNISWAP_V2_FACTORY_ADDRESS} ${WETH_ADDRESS}`
