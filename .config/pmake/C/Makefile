BIN=
CC=gcc

all: build

build: src/*.c
	$(CC) $< -o bin/$(BIN)

run: build
	bin/$(BIN)

clean:
	rm bin/$(BIN)
