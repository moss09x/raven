package lexing

Lexer :: struct {
	input: []byte,
	start: uint,
	idx:   uint,
}

LEXER :: Lexer{}
