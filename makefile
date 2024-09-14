-include .env.local

build:
	forge build src/UniswapV2Router02.sol --use 0.6.6

test-all:
	forge test -vvvv

deploy-uni-v2-factory-kairos:
	forge create --rpc-url ${KAIROS_TESTNET_RPC_URL} --account ${WALLET_NAME} src/UniswapV2Router02.sol:UniswapV2Router02 --constructor-args ${UNISWAP_V2_FACTORY_ADDRESS} ${WETH_ADDRESS}

deploy-uni-v2-factory-kaia:
	forge create --rpc-url ${KAIA_MAINNET_RPC_URL} --account ${WALLET_NAME} src/UniswapV2Router02.sol:UniswapV2Router02 --constructor-args ${UNISWAP_V2_FACTORY_ADDRESS} ${WETH_ADDRESS}
