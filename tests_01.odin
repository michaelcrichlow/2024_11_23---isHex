package test

import "core:fmt"
import "core:strings"
print :: fmt.println

main :: proc() {
	print(isHex("0x1A"))
	// OUTPUT:
	// true
}


isHex :: proc(s: string) -> bool {
	// guard clauses ----------------------------
	if len(s) == 0 || len(s) == 1 {
		return false
	}

	if strings.starts_with(s, "0x") == false {
		return false
	}
	// ------------------------------------------

	set, ok := strings.ascii_set_make("0123456789abcdefABCDEF")
	if !ok {
		fmt.eprintfln("Problem converting characters to Ascii Set.")
	}

	for val in s[2:] {
		if !strings.ascii_set_contains(set, u8(val)) {
			return false
		}
	}


	return true
}
