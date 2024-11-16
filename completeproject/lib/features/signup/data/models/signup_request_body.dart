import 'package:json_annotation/json_annotation.dart';

part 'signup_request_body.g.dart'; // Include this line to link the generated file

@JsonSerializable()
class SignupRequestBody {
  final String name;
  final String email;
  final String phone;
  final String password;

  @JsonKey(name: "password_confirmation")
  final String passwordConfirmation;

  final int gender;

  SignupRequestBody({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
    required this.passwordConfirmation,
    required this.gender,
  });

  // A method to generate an instance of SignupRequestBody from JSON
  factory SignupRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SignupRequestBodyFromJson(json);

  // A method to convert SignupRequestBody into JSON format
  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}
