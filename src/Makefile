.PHONY: all clean

all:
	nasm -f elf64 strlen.asm
	nasm -f elf64 putchar.asm
	nasm -f elf64 puts.asm
	nasm -f elf64 exit.asm
	nasm -f elf64 strcmp.asm

clean:
	rm -f strlen.o putchar.o puts.o exit.o strcmp.o
