//
//  DXValidatorEmail.m
//  DXValidator
//
//  Created by Maxim on 10/23/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import "DXValidatorEmail.h"

static NSString *mailRegExpPattern = @"^[A-Z0-9._%+-]+@(?:[A-Z0-9-]+\\.)+(?:[A-Z]{2}|com|org|net|edu|gov|mil|biz|info|mobi|name|aero|asia|jobs|museum)$";

@implementation DXValidatorEmail

- (id)init {
    NSRegularExpression* regExp = [[NSRegularExpression alloc]initWithPattern:mailRegExpPattern options:NSRegularExpressionCaseInsensitive error:nil];
    self = [super initWithRegularExpression:regExp];
    return self;
}

@end
