#include <iostream>

#include "my_cc_library/hello.hpp"

extern "C" void hello() {
    std::cout << "Hello, world." << std::endl;
}
