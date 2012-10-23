//
//  DXValidatorLetters.m
//  DXValidator
//
//  Created by Maxim on 10/23/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import "DXValidatorLetters.h"

static NSString *lettersRegExtPattern = @"^[A-Za-z]+$";

@implementation DXValidatorLetters

- (id)init {
    NSRegularExpression* regExp = [[NSRegularExpression alloc]initWithPattern:lettersRegExtPattern options:NSRegularExpressionCaseInsensitive error:nil];
    self = [self initWithRegularExpression:regExp];
    return self;
}

@end
