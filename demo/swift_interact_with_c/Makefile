.PHONY = swift c clean

PWD := $(shell pwd)
SWIFT_CALL_C := $(PWD)/swift_call_c
C_CALL_SWIFT := $(PWD)/c_call_swift
TARGET := x86_64-apple-macosx10.13
#swift
#nm c_hello.o
# 0000000000000000 T _yume_add

#c
# swiftc -target x86_64-apple-macosx10.12 -parse-as-library swift_add.swift
# swiftc -target x86_64-apple-macosx10.12 -emit-library -parse-as-library swift_add.swift -o swift_add.o
# llvm-gcc -target x86_64-apple-macosx10.12 swift_add.o c_main.c -o c_main

swift:
	@llvm-gcc --target=$(TARGET) -c $(SWIFT_CALL_C)/c_hello.c -o $(SWIFT_CALL_C)/c_hello.o
	@swiftc -target $(TARGET) $(SWIFT_CALL_C)/c_hello.o $(SWIFT_CALL_C)/swift_main.swift -o $(SWIFT_CALL_C)/swift_main
	@$(SWIFT_CALL_C)/swift_main

c:
	@swiftc -emit-library -parse-as-library $(C_CALL_SWIFT)/swift_add.swift -o $(C_CALL_SWIFT)/swift_add.o
	@llvm-gcc $(C_CALL_SWIFT)/swift_add.o $(C_CALL_SWIFT)/c_main.c -o $(C_CALL_SWIFT)/c_main
	@$(C_CALL_SWIFT)/c_main

clean:
	-rm c_main
	-rm $(SWIFT_CALL_C)/swift_main
	-rm $(SWIFT_CALL_C)/*.o
	-rm $(C_CALL_SWIFT)/c_main
	-rm $(C_CALL_SWIFT)/*.o


