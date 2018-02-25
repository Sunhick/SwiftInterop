//
//  Rectangle.cpp
//  SwiftInterop
//
//  Created by Sunil on 2/25/18.
//  Copyright © 2018 Sunil. All rights reserved.
//

#include "Rectangle.hpp"

#include <iostream>

Rectangle::Rectangle() {
    impl = new LoggerWrapperImpl();
}

void Rectangle::draw() {
    std::cout << "drawing rectangle" << std::endl;
    impl->debug("C++ calling into Swift");
}
