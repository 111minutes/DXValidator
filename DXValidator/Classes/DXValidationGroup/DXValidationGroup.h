//
//  DXValidationGroup.h
//  DXValidator
//
//  Created by Maxim on 10/23/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DXValidationGroup : NSObject

- (id)initWithValidators:(NSArray *)validators;
- (NSArray *)validate;
- (NSInteger)indexOfFirstFailedValidator;

@property (nonatomic, strong, readonly) NSArray *validators;

@end
