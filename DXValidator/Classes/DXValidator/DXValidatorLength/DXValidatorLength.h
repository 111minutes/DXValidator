//
//  DXValidatorLength.h
//  DXValidator
//
//  Created by Maxim on 10/23/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DXValidatorBase.h"

@interface DXValidatorLength : DXValidatorBase

- (id)initWithMaxLength:(NSInteger)maxLength;
- (id)initWithMinLength:(NSInteger)minLength;
- (id)initWithMinLength:(NSInteger)minLength maxLength:(NSInteger)maxLength;
- (id)initWithLength:(NSInteger)length;

@end
