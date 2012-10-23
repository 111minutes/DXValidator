//
//  DXValidatorRegExpr.m
//  DXValidator
//
//  Created by Maxim on 10/23/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import "DXValidatorRegExpr.h"

@interface DXValidatorRegExpr ()
@property (nonatomic, strong, readwrite) NSRegularExpression *regularExpression;
@end

@implementation DXValidatorRegExpr

- (id)initWithRegularExpression:(NSRegularExpression *)regularExpression {
    self = [super init];
    if (self) {
        self.regularExpression = regularExpression;
    }
    return self;
}

- (BOOL)validate {
    BOOL result = NO;
    NSString *text = [self validatedText];
    
    if(text.length != 0) {
        NSUInteger count = 0;
        count = [self.regularExpression numberOfMatchesInString:text options:0 range:NSMakeRange(0, text.length)];
        result = (count == 1);
    }
    else {
        result = self.isEmptyTextValid;
    }
    
    return result;
}

@end
