//
//  main.swift
//  ModuleMap
//
//  Created by Yume on 2018/1/17.
//  Copyright © 2018年 Yume. All rights reserved.
//

import Foundation
import ELF

//if CommandLine.argc == 1 {
//    print( " usage : \(CommandLine.arguments[0]) file - name ")
//    exit(1)
//}

//if ( elf_version ( EV_CURRENT ) == EV_NONE )
//errx ( EXIT_FAILURE , " ELF library initialization "
//" failed : %s " , elf_errmsg ( -1));
if ELF.elf_version(UInt32(ELF.EV_CURRENT)) == ELF.EV_NONE {
    print(" ELF library initialization ")
    exit(1)
}

//let fileName = CommandLine.arguments[1]
//let fileName = CommandLine.arguments[0]
let fileName = "/Users/yume/Desktop/demo/elfDump/c/ch2-1.o"
let fd = open(fileName, O_RDONLY)
if fd == 0 {
    print(" open \(fileName) \" failed ")
    exit(1)
}
guard let e = ELF.elf_begin(fd, ELF.ELF_C_READ, nil) else {
    //errx ( EXIT_FAILURE , " elf_begin () failed : %s . " , elf_errmsg ( -1));
    exit(1)
}


let ek = ELF.elf_kind(e)
switch ek {
case ELF_K_AR: print(" ar (1) archive ")
case ELF_K_ELF: print(" elf object ")
case ELF_K_NONE: print(" data ")
default: print(" unrecongnized ")
}
ELF.elf_end(e)
close(fd)
exit(0)
//(void) printf ( " %s : %s \n " , argv [1] , k );
//(void) elf_end ( e );
//( void ) close ( fd );
//exit ( EXIT_SUCCESS );

