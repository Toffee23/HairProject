// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => LoginModel(
      refresh: json['refresh'] as String?,
      access: json['access'] as String?,
      userProfile: json['user_profile'] == null
          ? null
          : UserProfile.fromJson(json['user_profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'refresh': instance.refresh,
      'access': instance.access,
      'user_profile': instance.userProfile,
    };

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => UserProfile(
      status: json['status'] as String?,
      message: json['message'] as String?,
      userId: json['user_id'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$UserProfileToJson(UserProfile instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'user_id': instance.userId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'username': instance.username,
      'phone_number': instance.phoneNumber,
    };
