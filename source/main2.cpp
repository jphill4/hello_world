#include <iostream>
#include "hello.hpp"

int main(void) {
    std::cout << hello::say_hello("foo") << "\n";
    std::cout << hello::say_hello("bar") << "\n";
    return 0;
}
