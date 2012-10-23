//
//  DXValidationGroup.m
//  DXValidator
//
//  Created by Maxim on 10/23/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import "DXValidationGroup.h"
#import "DXValidatorBase.h"

@implementation DXValidationGroup
@synthesize validators = _validators;

- (id)initWithValidators:(NSArray *)validators {
    self = [super init];
    if (self) {
        _validators = validators;
    }
    return self;
}

- (NSArray *)validate {
    NSMutableArray *validationResults = [NSMutableArray array];
    for (DXValidatorBase *validator in _validators) {
        BOOL valid = [validator validate];
        [validationResults addObject:[NSNumber numberWithBool:valid]];
    }
    return (NSArray *) validationResults;
}

- (NSInteger)indexOfFirstFailedValidator {
    NSInteger index = NSNotFound;
    
    NSArray *validationResults = [self validate];
    int i = 0;
    for (NSNumber *result in validationResults) {
        if (![result boolValue]) {
            index = i;
            break;
        }
        i++;
    }
    return index;
}


@end
