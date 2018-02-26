//
//  LoggerWrapper.mm
//  SwiftInterop
//
//  Created by Sunil on 2/25/18.
//  Copyright © 2018 Sunil. All rights reserved.
//

#import "LoggerWrapper.hpp"

@implementation LoggerWrapper

// The below code provides wrappers for calling from other objective c++ classes.
- (LoggerWrapper*) init {
    self->logger = [[Logger alloc] init];
    return self;
}

- (void) debug:(NSString *)msg {
    [logger debugWithMsg:msg];
}

- (void) info:(NSString *)msg {
    [logger infoWithMsg:msg];
}

// The below c++ mixed code is only for c++ calling into swift
LoggerWrapperImpl::LoggerWrapperImpl(void) : self(NULL) {
    init();
}

LoggerWrapperImpl::~LoggerWrapperImpl(void) {
    // ARC forbids explicit message send of 'dealloc'
    // We need to disable ARC for this file/ project using  fno-objc-arc
    // [(__bridge LoggerWrapper*)self dealloc];
}

void LoggerWrapperImpl::init() {
    self = (__bridge void*)[[LoggerWrapper alloc] init];
    ((__bridge LoggerWrapper*)self)->logger = [[Logger alloc] init];
}

void LoggerWrapperImpl::info(const char* cmsg) {
    LoggerWrapper* wrapper = (__bridge LoggerWrapper*)self;
    if (wrapper != nil) {
        NSString* msg = [[NSString alloc] initWithUTF8String:cmsg];
        [wrapper->logger infoWithMsg:msg];
    }
}

void LoggerWrapperImpl::debug(const char* cmsg) {
    LoggerWrapper* wrapper = (__bridge LoggerWrapper*)self;
    if (wrapper != nil) {
        NSString* msg = [[NSString alloc] initWithUTF8String:cmsg];
        [wrapper->logger debugWithMsg:msg];
    }
}

@end

