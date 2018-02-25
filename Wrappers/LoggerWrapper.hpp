//
//  LoggerWrapper.hpp
//  SwiftInterop
//
//  Created by Sunil on 2/25/18.
//  Copyright © 2018 Sunil. All rights reserved.
//

#import <Foundation/Foundation.h>

// This file is auto generated by the swift compiler.
// It's purpose is to expose swift class into objective c++
// where Briding-Headers are for exposing objective c++ to
// swift world.
#import <SwiftInterop-Swift.h>

#import "LoggerWrapper-Interface.h"

@interface LoggerWrapper : NSObject {
@private
    Logger* logger;
}

- (LoggerWrapper*) init;
- (void) info: (NSString*) msg;
- (void) debug: (NSString*) msg;

@end