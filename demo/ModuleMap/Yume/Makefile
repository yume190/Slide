.PHONY = dylib so a clean

so:
	@llvm-gcc yume.c -fPIC -shared -o libyume.so
dylib:
	@llvm-gcc yume.c -dynamiclib -o libyume.dylib
a:
	@llvm-gcc -c yume.c -o yume.o
	@ar rcs libyume.a yume.o	
clean:
	-rm yume.o
	-rm libyume.a
	-rm libyume.so
	-rm libyume.dylib

