BIN=

all: build

run: build
	./$(BIN)

build: src/*.hs
	ghc $< -o bin/$(BIN)
