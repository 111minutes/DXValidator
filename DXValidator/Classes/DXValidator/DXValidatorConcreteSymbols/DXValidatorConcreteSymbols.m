//
//  DXValidatorConcreteSymbols.m
//  DXValidator
//
//  Created by Maxim on 10/23/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import "DXValidatorConcreteSymbols.h"

@implementation DXValidatorConcreteSymbols

- (id)initWithSymbolsFromString:(NSString *)symbols {
    
    NSString *regExprString = [NSString stringWithFormat:@"^[%@]+$", symbols];
    NSRegularExpression* regExp = [[NSRegularExpression alloc]initWithPattern:regExprString options:0 error:nil];
    
    self = [super initWithRegularExpression:regExp];
    return self;
}

@end
