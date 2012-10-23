//
//  DXValidatorNumbers.m
//  DXValidator
//
//  Created by Maxim on 10/23/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import "DXValidatorNumbers.h"

static NSString *numbersRegExpPattern = @"^[0-9]+$";

@implementation DXValidatorNumbers

- (id)init {
    NSRegularExpression* regExp = [[NSRegularExpression alloc]initWithPattern:numbersRegExpPattern options:NSRegularExpressionCaseInsensitive error:nil];
    self = [super initWithRegularExpression:regExp];
    return self;
}

@end
