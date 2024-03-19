CC="gcc"
AS="nasm"
SRC_DIR="src"
OBJ_DIR="obj"
BIN_DIR="bin"

$AS $SRC_DIR/*.asm -f elf64 -o $OBJ_DIR/assembly.o

$CC -c $SRC_DIR/main.c -o $OBJ_DIR/main.o

$CC $OBJ_DIR/* -o $BIN_DIR/program.exe