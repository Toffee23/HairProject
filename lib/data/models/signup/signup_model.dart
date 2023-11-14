import 'package:json_annotation/json_annotation.dart';

part 'signup_model.g.dart';

@JsonSerializable(explicitToJson: true)
class SignupModel {
  final String? email;
  final String? password;
  final String? phoneNumber;
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? userType;

  const SignupModel({
    this.email,
    this.password,
    this.phoneNumber,
    this.username,
    this.firstName,
    this.lastName,
    this.userType,
  });

  factory SignupModel.fromJson(Map<String, dynamic> json) =>
      _$SignupModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignupModelToJson(this);

  SignupModel copyWith({
    String? email,
    String? password,
    String? phoneNumber,
    String? username,
    String? firstName,
    String? lastName,
    String? userType,
  }) {
    return SignupModel(
      email: email ?? this.email,
      password: password ?? this.password,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      username: username ?? this.username,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      userType: userType ?? this.userType,
    );
  }
}
