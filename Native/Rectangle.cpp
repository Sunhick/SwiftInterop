//  Copyright © 2018 Sunil. All rights reserved.

#include "Rectangle.hpp"

#include <iostream>

Rectangle::Rectangle() {
    impl = std::make_shared<NSLoggerImpl>("C++");
}

void Rectangle::draw() {
  std::cout << "drawing rectangle" << std::endl;
  impl->debug("C++ calling into Swift");
}
