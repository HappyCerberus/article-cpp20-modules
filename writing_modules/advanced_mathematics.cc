export module AdvancedMathematics;

export auto plus(auto x, auto y) -> decltype(x+y) {
    return x + y;
}

export namespace AdvancedMathematics {
    auto minus(auto x, auto y) -> decltype(x-y) {
        return x - y;
    }
}

void this_function_will_not_be_exported() {}
