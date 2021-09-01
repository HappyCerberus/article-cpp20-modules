module;

#include <cstdlib>

export module main;

// Import partition internal, cannot be re-exported
import :internal;

// Import partition base and re-export its exported symbols
export import :base;

export void function() {
	internal_test_symbol();
	visible();
	internal_base();

	if (identity(3) != 3) abort();
}
