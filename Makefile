SRCS=$(shell find src -wholename 'src/*.c')

all: rv32i x86-64

rv32i: $(SRCS:src/%.c=rv32i/%.s)
rv32i/%.s: src/%.c
	riscv32-unknown-linux-gnu-gcc -march=rv32i -O0 -S -o $@ $<

x86-64: $(SRCS:src/%.c=x86-64/%.s)
x86-64/%.s: src/%.c
	gcc -march=x86-64 -O0 -S -o $@ $<

test: $(SRCS:src/%.c=test/%)
test/%: src/%.c
	gcc -O0 -o $@ $<

.PHONY: clean
clean: all
	find . -name '*.s' -delete
