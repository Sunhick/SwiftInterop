//  Copyright © 2018 Sunil. All rights reserved.

#pragma once

#import <memory>

#include "NSLoggerImpl.hpp"

class Rectangle {
private:
    std::shared_ptr<NSLoggerImpl> impl;
    
public:
    Rectangle();
    void draw();
};
