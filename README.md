# DXValidator - framework for validation text entered in UITextFields and UITextViews.


## Summary

When you have many input fields you probably need provide some validation for them. For example, on Login or Registration screen very often more than 5 or even than 10 input fields. 
DXValidator framework provide very simple validation tool.

## Examples

**Validator**

Following example demonstrates how to create validator, bind it with input field and specify error message:
```
DXValidatorLength *validator = [[DXValidatorLength alloc] initWithMaxLength:15];
validator.validatableObject = firstNameTextField;
validator.errorMessage = [NSString stringWithFormat:@"Last Name must be no longer than 15 symbols"];
```

To validate field you can do following:
```
BOOL isValid = [validator validate];
```

**Validation Group**

If you have many input fields just create validators for every field and add them to validation group
```
NSMutableArray *validatorsArray = [NSMutableArray array];
DXValidatorBase *validator = nil;

validator = [DXValidatorNotEmpty new];
validator.validatableObject = [_textFieldsArray objectAtIndex:cFirstNameFieldIndex];
validator.errorMessage = @"Please fill all mandatory fields";
[validatorsArray addObject:validator];

validator = [[DXValidatorLength alloc] initWithMaxLength:cFirstNameMaxSymbols];
validator.validatableObject = [_textFieldsArray objectAtIndex:cFirstNameFieldIndex];
validator.errorMessage = [NSString stringWithFormat:@"First Name must be no longer than %d symbols", cFirstNameMaxSymbols];
[validatorsArray addObject:validator];

validator = [DXValidatorNotEmpty new];
validator.validatableObject = [_textFieldsArray objectAtIndex:cEmailFieldIndex];
validator.errorMessage = @"Please fill all mandatory fields";
[validatorsArray addObject:validator];

validator = [DXValidatorEmail new];
validator.validatableObject = [_textFieldsArray objectAtIndex:cEmailFieldIndex];
validator.errorMessage = @"Please enter correct Email";
[validatorsArray addObject:validator];

NSRegularExpression *lettersAndWhitespaceRegExpr = [[NSRegularExpression alloc] initWithPattern:@"^[A-Za-z ]+$" options:0 error:nil];
validator = [[DXValidatorRegExpr alloc] initWithRegularExpression:lettersAndWhitespaceRegExpr];
validator.validatableObject = [_textFieldsArray objectAtIndex:cCityFieldIndex];
validator.errorMessage = @"Please use only letters and space symbol in City field";
validator.isEmptyTextValid = YES;
[validatorsArray addObject:validator];


DXValidationGroup * validationGroup = [[DXValidationGroup alloc] initWithValidators:validatorsArray];
```

To validate field via validation group do following code:
```
NSInteger indexOfFailedValidator = [validationGroup indexOfFirstFailedValidator];
if (NSNotFound != indexOfFailedValidator) {
    DXValidatorBase *validator = [validationGroup.validators objectAtIndex:indexOfFailedValidator];
    NSString *errorMessage = validator.errorMessage;
    // show alert here
    [validator.validatableObject becomeFirstResponder];
}
else {
	//Validation succedded ! Wahoo!
}
```

Also if you want to know validation results for all input fields do following:
```
NSArray *validationResults = [validationGroup validate];
int count = validationResults.count;
for(int i = 0 ; i < count; i++) {
	NSNumber *result = [validationResults objectAtIndex:i];
	if([result boolValue] == NO) {
		NSLog(@"Validation failed for field with index %d", i);
	}
	else {
		NSLog(@"Validation succeeded for field with index %d", i);
	}
}
```

