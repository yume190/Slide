

proj:
	@swift package generate-xcodeproj
build:
	@swift build \
		-Xlinker -static 
release:
	@swift build -c release
run:
	@swift run
toolVersion:
	@swift package tools-version

rb:
	@swift build && swift run