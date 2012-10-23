//
//  DXValidatorBase.h
//  DXValidator
//
//  Created by Maxim on 10/23/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DXValidatorBase : NSObject

@property (nonatomic, strong) id validatableObject;
@property (nonatomic, strong) NSString *errorMessage;
@property (nonatomic, assign) BOOL isEmptyTextValid;    //dafault NO

- (BOOL)validate;
- (NSString *)validatedText;

@end
