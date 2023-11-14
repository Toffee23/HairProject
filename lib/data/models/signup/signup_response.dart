import 'package:json_annotation/json_annotation.dart';

part 'signup_response.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.none)
class SignupResponse {
  final String? status;
  final String? message;
  final Data? data;

  const SignupResponse({
    this.status,
    this.message,
    this.data,
  });

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignupResponseToJson(this);

  SignupResponse copyWith({
    String? status,
    String? message,
    Data? data,
  }) {
    return SignupResponse(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }
}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.none)
class Data {
  final String? id;
  final String? email;
  final String? phoneNumber;
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? twoFactorAuthToken;

  const Data({
    this.id,
    this.email,
    this.phoneNumber,
    this.username,
    this.firstName,
    this.lastName,
    this.twoFactorAuthToken,
  });

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    String? id,
    String? email,
    String? phoneNumber,
    String? username,
    String? firstName,
    String? lastName,
    String? twoFactorAuthToken,
  }) {
    return Data(
      id: id ?? this.id,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      username: username ?? this.username,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      twoFactorAuthToken: twoFactorAuthToken ?? this.twoFactorAuthToken,
    );
  }
}
