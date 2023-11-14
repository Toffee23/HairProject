import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  final String? refresh;
  final String? access;
  @JsonKey(name: 'user_profile')
  final UserProfile? userProfile;

  const LoginModel({
    this.refresh,
    this.access,
    this.userProfile,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);

  LoginModel copyWith({
    String? refresh,
    String? access,
    UserProfile? userProfile,
  }) {
    return LoginModel(
      refresh: refresh ?? this.refresh,
      access: access ?? this.access,
      userProfile: userProfile ?? this.userProfile,
    );
  }
}

@JsonSerializable()
class UserProfile {
  final String? status;
  final String? message;
  @JsonKey(name: 'user_id')
  final String? userId;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;
  final String? email;
  final String? username;
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;

  const UserProfile({
    this.status,
    this.message,
    this.userId,
    this.firstName,
    this.lastName,
    this.email,
    this.username,
    this.phoneNumber,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileToJson(this);

  UserProfile copyWith({
    String? status,
    String? message,
    String? userId,
    String? firstName,
    String? lastName,
    String? email,
    String? username,
    String? phoneNumber,
  }) {
    return UserProfile(
      status: status ?? this.status,
      message: message ?? this.message,
      userId: userId ?? this.userId,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      username: username ?? this.username,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }
}
