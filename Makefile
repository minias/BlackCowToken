PACKAGES=BlackCowToken

.PHONY: help clean solc abigen test

#? help: Get more info on make commands.
help: Makefile
	@echo ''
	@echo 'blow the file required'	
	@echo '	GNU Make v3.x / go v1.20.x / solc v0.8.18 / abigen v1.13.x '
	@echo ''	
	@echo 'If you use a maxos, you can install it as a brew. There is an option specifically for Mac users.'	
	@echo ''
	@echo 'Usage:'
	@echo '  make [target]'
	@echo ''
	@echo 'Targets:'
	@sed -n 's/^#?//p' $< | column -t -s ':' | sed -e 's/^/ /'

#? clean: All remove makefile.
clean:
	rm -rf abi $(PACKAGES).go $(PACKAGES)_test.go

#? all: Build abin && autogenerater go Pkg file.
all: clean solc gogen test

#? solc: Build solidity source to abi.
solc:
	solc --abi $(PACKAGES).sol -o abi

#? gogen: Automatic generation of go packages files.
gogen:
	go install github.com/ethereum/go-ethereum/cmd/abigen
	abigen --abi "./abi/$(PACKAGES).abi" --pkg $(PACKAGES) --type $(PACKAGES) --out $(PACKAGES).go

#? test: Automatic generation of go test files.
test:
	GO111MODULE=on go get -u github.com/cweill/gotests/...
	gotests -all -w $(PACKAGES).go
	go test

#? install: There is an install option specifically for Mac users.
install:
	brew install make go sloc ethereum