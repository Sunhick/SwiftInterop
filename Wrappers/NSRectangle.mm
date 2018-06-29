//  Copyright © 2018 Sunil. All rights reserved.

#import <memory>

#import "NSRectangle.hpp"
#import "Rectangle.hpp"
#import "NSLoggerImpl.hpp"

// With the modern objective c++ you can hide the private variables in
// implementation files. So that your header files will be clean and you
// don't have to do any c++ casting. (Approach: Opaque pointers)
@implementation NSRectangle {
@private
    std::shared_ptr<Rectangle> rect;
    std::shared_ptr<NSLoggerImpl> log;
}

- (NSRectangle*) init {
    rect = std::make_shared<Rectangle>();
    log = std::make_shared<NSLoggerImpl>("Objc++");
    return self;
}

- (void) draw {
    rect->draw();
    log->debug("called from objective c++ wrapper");
}

@end
