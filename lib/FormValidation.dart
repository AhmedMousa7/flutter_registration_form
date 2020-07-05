import 'package:form_field_validator/form_field_validator.dart';

class FormValidation {
  final nameValidator = RequiredValidator(errorText: "Name must not be empty");

  final emailValidator = MultiValidator([
    RequiredValidator(errorText: 'Email must not be empty'),
    EmailValidator(errorText: 'Invalid email address')
  ]);

  final phoneValidator = MultiValidator([
    RequiredValidator(errorText: "Phone must not be empty"),
    PatternValidator('^(01)[0-9]{9}',
        errorText: 'Phone number format should be like 01xxxxxxxxx')
  ]);

  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'Password must not be empty'),
    MinLengthValidator(8, errorText: 'Password must be at least 8 digits long'),
    PatternValidator(r'([a-z])',
        errorText: 'Passwords must have at least one lowercase character'),
    PatternValidator(r'([A-Z])',
        errorText: 'Passwords must have at least one uppercase character'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'Passwords must have at least one special character')
  ]);
}
