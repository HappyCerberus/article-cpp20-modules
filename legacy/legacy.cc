module;

#define RESULT 42
#include "header.h"

export module testmodule;

export auto testfunction() {
	return function();
}
