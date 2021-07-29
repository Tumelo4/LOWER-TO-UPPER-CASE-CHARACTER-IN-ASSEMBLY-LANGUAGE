upper:
	yasm -f elf64 -g dwarf2 -l upper.lst upper.asm
	ld -o upper upper.o

run:
	./upper

clean:
	rm -f *o *lst upper
