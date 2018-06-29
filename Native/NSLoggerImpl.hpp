//  Copyright © 2018 Sunil. All rights reserved.

#pragma once

#import <string>

class NSLoggerImpl {
public:
    NSLoggerImpl(std::string name);
    ~NSLoggerImpl(void);
    
    void init(std::string name);
    void info(const char* cmsg);
    void debug(const char* cmsg);
    
private:
    void* self;
};
