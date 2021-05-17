#include "hello.hpp"

namespace hello {

std::string say_hello() {
    return "Hello, World!";
}

std::string say_hello(const std::string& message) {
    return "Hello, " + message + ".";
}

}
