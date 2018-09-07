NAME:=ubpf
include docker_push_script/rule.mk

run:main.c
	docker run -v${PWD}:/workdir -w /workdir --rm -it ubpf sh -c "clang -O2 -target bpf -c main.c -o main.o && /ubpf/vm/test -j main.o"