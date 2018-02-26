//
//  RectangleWrapper.mm
//  SwiftInterop
//
//  Created by Sunil on 2/25/18.
//  Copyright © 2018 Sunil. All rights reserved.
//

#import "RectangleWrapper.hpp"
#import "Rectangle.hpp"
#import "LoggerWrapper.hpp"

@implementation RectangleWrapper

- (RectangleWrapper*) init {
    ptr = new Rectangle;
    return self;
}

- (void) draw {
    Rectangle* rect =  reinterpret_cast<Rectangle*>(ptr);
    rect->draw();

    LoggerWrapper* log = [[LoggerWrapper alloc] init];
    [log debug:@"called from objective c++ wrapper"];
}

@end
