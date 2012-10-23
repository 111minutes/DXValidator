//
//  DXValidatorLength.m
//  DXValidator
//
//  Created by Maxim on 10/23/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import "DXValidatorLength.h"

@implementation DXValidatorLength {
    NSInteger _minLength;
    NSInteger _maxLength;
}

- (id)initWithMaxLength:(NSInteger)maxLength {
    self = [self initWithMinLength:0 maxLength:maxLength];
    return self;
}

- (id)initWithMinLength:(NSInteger)minLength {
    self = [self initWithMinLength:minLength maxLength:NSIntegerMax];
    return self;
}

- (id)initWithLength:(NSInteger)length {
    self = [self initWithMinLength:length maxLength:length];
    return self;
}

- (id)initWithMinLength:(NSInteger)minLength maxLength:(NSInteger)maxLength {
    self = [super init];
    if (self) {
        _minLength = minLength;
        _maxLength = maxLength;
    }
    return self;
}


- (BOOL)validate {
    BOOL result = NO;
    NSString *text = [self validatedText];
    if (text.length != 0) {
        result = text.length >= _minLength && text.length <= _maxLength;
    }
    else {
        result = self.isEmptyTextValid;
    }
    return result;
}

@end
