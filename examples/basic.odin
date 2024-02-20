package examples

import "../protobuf"

import "core:fmt"

main :: proc() {
		buffer: []u8 = {
			0x08, 0x96, 0x01,
			0x12, 0x07, 0x74, 0x65, 0x73, 0x74, 0x69, 0x6e, 0x67,
		}
		if message, ok := protobuf.decode(buffer); ok {
			fmt.printf("Parsed message: %#v\n", message)
		}

}
