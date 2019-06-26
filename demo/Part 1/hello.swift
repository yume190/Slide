#!/usr/bin/env xcrun swift
func hello() {
    print("hello Yume")
}

@_silgen_name("hello1") 
func hello1() { 
    print("hello1")
}

@_cdecl("hello2") 
func hello2() { 
    print("hello2")
}
hello()
