//
//  RectangleWrapper.mm
//  interop
//
//  Created by Sunil on 2/25/18.
//  Copyright © 2018 Sunil. All rights reserved.
//

#import "RectangleWrapper.h"
#import "Rectangle.hpp"

@implementation RectangleWrapper

- (RectangleWrapper*) init {
    ptr = (void*)new Rectangle;
    return self;
}

- (void) draw {
    Rectangle* rect =  reinterpret_cast<Rectangle*>(ptr);
    rect->draw();
}

@end
