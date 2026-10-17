package raven

import "core:os"
import "core:fmt"

import "lexing"

main :: proc() {
	args := os.args

	if len(args) != 2 {
		fmt.println("Usage: raven <file.rv>")
		os.exit(1)
	}

	path := args[1]
	input, read_err := os.read_entire_file(path, context.allocator)

	if read_err != nil {
		fmt.printfln("Failed to read file %v:\n%v", path, read_err)
		os.exit(1)
	}

	lexer := lexing.LEXER
}
