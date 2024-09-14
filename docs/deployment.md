# Deployment

```bash
forge build src/UniswapV2Router02.sol --use 0.6.6
[⠊] Compiling...
[⠆] Compiling 10 files with Solc 0.6.6
[⠰] Solc 0.6.6 finished in 251.97ms
Compiler run successful!
```

```bash
forge create --rpc-url ***** --account dev src/UniswapV2Router02.sol:UniswapV2Router02 --constructor-args ***** *****
[⠊] Compiling...
No files changed, compilation skipped
Enter keystore password:
Deployer: *****
Deployed to: 0xf96BbB746d2E7959Cf3eBC4C361D93768e3e802b
Transaction hash: 0x9139107039eb7fd4cd1a112f6acc589d19127cf3a00812f09e9faef908cefe4a
```