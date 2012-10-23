//
//  DXValidatorNotEmpty.m
//  DXValidator
//
//  Created by Maxim on 10/23/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import "DXValidatorNotEmpty.h"

@implementation DXValidatorNotEmpty

- (id)init {
    self = [super init];
    if (self) {
        self.isEmptyTextValid = NO;
    }
    return self;
}

- (BOOL)validate {
    NSString *text = [self validatedText];
    return (text.length != 0);
}

@end
