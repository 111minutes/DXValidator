//
//  DXValidatorRequiredSymbols.m
//  DXValidator
//
//  Created by Maxim on 10/23/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import "DXValidatorRequiredSymbols.h"

@interface DXValidatorRequiredSymbols ()
- (BOOL)isValidatedTextHaveUppercaseCharacter;
- (BOOL)isValidatedTextHaveLovercaseCharacter;
- (BOOL)isValidatedTextHaveDigitCharacter;
@end

@implementation DXValidatorRequiredSymbols {
    UInt32 _requiredSymbols;
}

- (id)initWithRequiredSymbols:(UInt32)requiredSymbols {
    self = [super init];
    if (self) {
        _requiredSymbols = requiredSymbols;
    }
    return self;
}

- (BOOL)validate {
    if (_requiredSymbols & cRequiredSymbolUppercaseLetter) {
        if (![self isValidatedTextHaveUppercaseCharacter]) {
            return NO;
        }
    }
    if (_requiredSymbols & cRequiredSymbolLovercaseLetter) {
        if (![self isValidatedTextHaveLovercaseCharacter]) {
            return NO;
        }
    }
    if (_requiredSymbols & cRequiredSymbolDigit) {
        if (![self isValidatedTextHaveDigitCharacter]) {
            return NO;
        }
    }
    return YES;
}

- (BOOL)isValidatedTextHaveUppercaseCharacter {
    NSString *text = [self validatedText];
    NSInteger length = text.length;
    for (int i = 0; i < length; i++) {
        unichar c = [text characterAtIndex:i];
        if (c >= 'A' && c <= 'Z') {
            return YES;
        }
    }
    return NO;
}

- (BOOL)isValidatedTextHaveLovercaseCharacter {
    NSString *text = [self validatedText];
    NSInteger length = text.length;
    for (int i = 0; i < length; i++) {
        unichar c = [text characterAtIndex:i];
        if (c >= 'a' && c <= 'z') {
            return YES;
        }
    }
    return NO;
}

- (BOOL)isValidatedTextHaveDigitCharacter {
    NSString *text = [self validatedText];
    NSInteger length = text.length;
    for (int i = 0; i < length; i++) {
        unichar c = [text characterAtIndex:i];
        if (c >= '0' && c <= '9') {
            return YES;
        }
    }
    return NO;
}

@end
