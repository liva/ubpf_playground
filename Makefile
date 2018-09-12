DOCKER_CMD=docker run -v${PWD}:/workdir -w /workdir --rm livadk/ubpf:1387664b5a6d34f9b4952aa65b574a7348affac9
.PHONY: run clean

run:main.o
	$(DOCKER_CMD) /ubpf/vm/test -j -m mem main.o

main.o:main.c
	$(DOCKER_CMD) clang -O2 -target bpf -c main.c -o main.o

main.bin:main.o
	$(DOCKER_CMD) objcopy -I elf64-little -O binary main.o main.bin

main.s:main.bin
	$(DOCKER_CMD) /ubpf/bin/ubpf-disassembler main.bin main.s
	cat main.s

clean:
	rm -f main.o main.bin main.s