
all:
	make -C C
	make -C asm

clean:
	make -C clean
	make -C clean

fclean:
	make -C C fclean
	make -C asm fclean

