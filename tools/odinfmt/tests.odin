package odinfmt_tests

import "core:testing"
import "core:os"
import "core:fmt"
import "core:mem"

import "snapshot"


main :: proc() {
	init_global_temporary_allocator(mem.Megabyte*100)
	
	if !snapshot.snapshot_directory("tests") {
		os.exit(1)
	} 

}
