#include "gtest/gtest.h"

#include "myapp/hello.hpp"

namespace {

TEST(HelloTest, CallHello) {
   myapp::hello();
}

}

int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
