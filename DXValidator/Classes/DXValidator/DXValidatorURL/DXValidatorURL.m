//
//  DXValidatorURL.m
//  DXValidator
//
//  Created by Maxim on 10/23/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import "DXValidatorURL.h"

static NSString *urlRegExpPattern = @"^http(s)?://[a-z0-9-]+(.[a-z0-9-]+)+(:[0-9]+)?(/.*)?$";

@implementation DXValidatorURL

- (id)init {
    NSRegularExpression* regExp = [[NSRegularExpression alloc]initWithPattern:urlRegExpPattern options:NSRegularExpressionCaseInsensitive error:nil];
    
    self = [super initWithRegularExpression:regExp];
    return self;
}

@end
