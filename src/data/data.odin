package data

Token_Kind :: enum {
	Ident,

	// Keywords
	Fun,
	Return,
	Int,
	Float,
	Bool,
	String,
	Void,

	// Punctuators
	L_Paren,
	R_Paren,
	L_Curly,
	R_Curly,
	Semi,
	Comma,
	Colon,

	// Operators
	Plus,
	Minus,
	Star,
	Slash,

	// Literals
	LitInt,
	LitFloat,
	LitString,
	LitBool,

	// Misc
	Invalid,
	EOF,
}

Token :: struct {
	kind:  Token_Kind,
	start: u32,
	end:   u32,
}
