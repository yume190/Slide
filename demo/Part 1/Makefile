.PHONY = none release debug clean

## Flag
none:
	@swiftc helloFlag.swift -o helloFlag && ./helloFlag
release:
	@swiftc helloFlag.swift -DRELEASE -o helloFlag && ./helloFlag
debug:
	@swiftc helloFlag.swift -DDEBUG -o helloFlag && ./helloFlag


## Symbol
nm:
	@swiftc hello.swift -o hello
	@nm hello | grep hello
demangle:
	@swiftc hello.swift -o hello
	@nm hello | grep hello | swift-demangle
hello1:
	@make cHello1.o
	@nm cHello1.o
hello2:
	@make cHello2.o
	@nm cHello2.o
sil:
	@swiftc hello.swift -emit-silgen | grep "sil hidden" | grep hello

clean:
	-rm helloFlag
	-rm hello
	-rm cHello.o
	-rm cHello1.o
	-rm cHello2.o
	