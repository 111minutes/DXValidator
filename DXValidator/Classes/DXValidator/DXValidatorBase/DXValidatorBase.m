//
//  DXValidatorBase.m
//  DXValidator
//
//  Created by Maxim on 10/23/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import "DXValidatorBase.h"

@implementation DXValidatorBase

@synthesize validatableObject = _validatableObject;
@synthesize errorMessage = _errorMessage;
@synthesize isEmptyTextValid = _isEmptyTextValid;

- (id)init {
    self = [super init];
    if (self) {
        _isEmptyTextValid = NO;
    }
    return self;
}

- (BOOL)validate {
    return NO;
}

- (NSString *)validatedText {
    if ([self.validatableObject respondsToSelector:@selector(text)]) {
        return [self.validatableObject text];
    }
    return nil;
}

@end
