import 'dart:convert';
import 'dart:developer';

import 'package:hairsol/core/app_export.dart';
// import 'package:hairsol/data/apiClient/dio_client.dart';
import 'package:hairsol/data/models/signup/signup_response.dart';
import 'package:http/http.dart' as http;

import '../models/login/login_model.dart';
import '../models/signup/signup_model.dart';
import 'config.dart';

class ApiClient extends GetConnect {
  // final Dio _dio = Dio();
  static var client = http.Client();

  // final DioService _dioService = DioService();

  // ApiClient(this._dioService);

  Future<dynamic> login(String email, String password) async {
    final url = '${Config.base_url}${Config.login}';
    final data = {'email': email, 'password': password};
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    try {
      final http.Response response = await http.post(
        Uri.parse(url),
        headers: headers,
        body: jsonEncode(data),
      );

      if (response.statusCode == 200) {
        LoginModel loginModelResponse =
            LoginModel.fromJson(jsonDecode(response.body));
        print(
            'Login successful. Token: ${loginModelResponse.userProfile?.username}');
        return loginModelResponse;
      } else {
        return jsonDecode(response.body);
      }
    } catch (e) {
      log(e.toString());
      return {'status': 'failed', 'message': 'Connection error'};
    }
  }

  Future<dynamic> signup(Map<String, dynamic> data) async {
    final url = '${Config.base_url}${Config.register}';
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    try {
      final http.Response response = await http.post(
        Uri.parse(url),
        headers: headers,
        body: jsonEncode(data),
      );

      if (response.statusCode == 201) {
        final signupResponse =
            SignupResponse.fromJson(jsonDecode(response.body));
        return signupResponse;
      } else {
        return jsonDecode(response.body);
      }
    } catch (e) {
      log(e.toString());
      return {'status': 'failed', 'message': 'Connection error'};
    }
  }

  static Future<bool> newSignup(SignupModel model) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };

    var url = Uri.https(Config.base_url, Config.register);
    var response = await client.post(url,
        headers: requestHeaders, body: jsonEncode(model.toJson()));

    log('The new Response ' + response.body.toString());

    // SignupResponse signupResponse = SignupResponse.fromJson(jsonDecode(response.body));

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future<dynamic> verifyUser(String email, String verificationCode) async {
    final url = '${Config.base_url}${Config.verify}${email}';
    final Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    final Map<String, String> body = {
      'two_factor_auth_token': verificationCode,
    };

    try {
      final http.Response response = await http.patch(
        Uri.parse(url),
        headers: headers,
        body: jsonEncode(body),
      );
      print(response);
      if (response.statusCode == 200) {
        // Successful verification
        return true;
      } else {
        // Handle error
        return jsonDecode(response.body);
      }
    } catch (error) {
      // Handle network or other errors
      print('Error: $error');
      return {'status': 'failed', 'message': 'Connection error'};
    }
  }

  Future<dynamic> forgetPassword(String email) async {
    final url = '${Config.base_url}${Config.forgetPassword}${email}';
    final Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    try {
      print('do something');
      final http.Response response = await http.get(
        Uri.parse(url),
        headers: headers,
      );
      print(response.body);
      if (response.statusCode == 200) {
        // Successful verification
        return true;
      } else {
        // Handle error
        return jsonDecode(response.body);
      }
    } catch (error) {
      // Handle network or other errors
      print('Error: $error');
      return {'status': 'failed', 'message': 'Connection error'};
    }
  }

  Future<SignupResponse> registerUser(SignupModel model) async {
    var url = Uri.parse('${Config.base_url}${Config.register}');
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      "email": model.email,
      "password": model.password,
      "phone_number": model.phoneNumber,
      "username": model.username,
      "first_name": model.firstName,
      "last_name": model.lastName,
      "user_type": model.userType
    });
    log('The new Model ' + body);
    try {
      var response = await http.post(url, headers: headers, body: body);
      if (response.statusCode == 201) {
        SignupResponse signupResponse =
            SignupResponse.fromJson(jsonDecode(response.body));

        print("User registered successfully." + signupResponse.data!.username!);
        return signupResponse;
      } else {
        print('Failed to register user. Error: ${response.body}');
        throw new Error();
        // You can handle the error here
      }
    } catch (e) {
      print('Failed to register user. Exception: $e');
      throw new Error();

      // You can handle the exception here
    }
  }
}
