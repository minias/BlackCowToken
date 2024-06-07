# BlackCowToken

Ethereum ERC20 BlackCowToken Smart Contract

## Preliminary requirement

- GNU Make v3.x or late version.
- go v1.20.x or late version.
- solc v0.8.18 or late version.
- abigen v1.13.x or late version.  (Geth devtool)

## How to uses

```sh
make all
```

## Makefile help

```sh
blow the file required
GNU Make v3.x / go v1.20.x / solc v0.8.18 / abigen v1.13.x

If you use a macos, you can install it as a brew. There is an option specifically for Mac users.

Usage:
  make [target]

Targets:
  help      Get more info on make commands.
  clean     All remove makefile.
  all       Build abin && autogenerater go Pkg file.
  solc      Build solidity source to abi.
  gogen     Automatic generation of go packages files.
  test      Automatic generation of go test files.
  bi        There is an install option specifically for MacOs brew users.
```

## Do you have any questions?

- [Kakao Talk Go developer chat room](https://open.kakao.com/o/gd5mx3E)

## License

### CC0 1.0 Universal
