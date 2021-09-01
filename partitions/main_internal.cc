module main:internal;

void internal_test_symbol() {} // will be visible in main module

// template inside of non-interface unit works just fine
template <typename T>
T identity(T x) { return x; }
