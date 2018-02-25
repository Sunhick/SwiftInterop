//
//  Rectangle.hpp
//  SwiftInterop
//
//  Created by Sunil on 2/25/18.
//  Copyright © 2018 Sunil. All rights reserved.
//

#ifndef RECTANGLE_HPP
#define RECTANGLE_HPP

#include "LoggerWrapper-Interface.h"

class Rectangle {
private:
    LoggerWrapperImpl* impl;
    
public:
    Rectangle();
    void draw();
};

#endif // RECTANGLE_HPP
