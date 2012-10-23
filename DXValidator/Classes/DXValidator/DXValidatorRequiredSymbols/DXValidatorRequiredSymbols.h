//
//  DXValidatorRequiredSymbols.h
//  DXValidator
//
//  Created by Maxim on 10/23/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DXValidatorBase.h"

static const UInt32 cRequiredSymbolNone = 0;
static const UInt32 cRequiredSymbolUppercaseLetter = 1;
static const UInt32 cRequiredSymbolLovercaseLetter = 2;
static const UInt32 cRequiredSymbolDigit = 4;

@interface DXValidatorRequiredSymbols : DXValidatorBase

- (id)initWithRequiredSymbols:(UInt32)requiredSymbols; //constants united by '|' operator

@end
