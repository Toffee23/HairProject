import 'package:dio/dio.dart';
import 'package:hairsol/data/apiClient/config.dart';

class DioService {
  late final Dio _dio;

  DioService() {
    this._dio = Dio(BaseOptions(
      baseUrl: Config.base_url,
      connectTimeout: Duration(minutes: 2),
      receiveTimeout: Duration(minutes: 2),
      contentType: "application/json",
    ));

    _dio.interceptors.addAll([_DioInterceptor()]);
  }

  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
  }) async {
    print(this._dio.options.baseUrl + path);
    return await _dio.get(
      this._dio.options.baseUrl + path,
      onReceiveProgress: onReceiveProgress,
      cancelToken: cancelToken,
      options: options,
      queryParameters: queryParameters,
    );
  }

  ///[POST] We will use this method inorder to process post requests
  Future<Response> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    print(this._dio.options.baseUrl + path);
    return await _dio.post(
      this._dio.options.baseUrl + path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
      onSendProgress: onSendProgress,
    );
  }
}

class _DioInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.cancel:
      case DioExceptionType.connectionError:
      case DioExceptionType.unknown:
        throw ConnectionException();
      case DioExceptionType.badResponse:
        print("STATUS CODE : ${err.response?.statusCode}");
        print("${err.response?.data}");
        switch (err.response?.statusCode) {
          case 400:
          case 401:
          case 404:
          case 409:
          case 500:
            throw ServerSideException(statusCode: err.response!.statusCode!, requestOptions: err.requestOptions);
        }
        break;
      case DioExceptionType.badCertificate:
        break;
    }
    return handler.next(err);
  }
}

class RequestInterceptor extends Interceptor {
  final Dio dio;
  final String apiKey;
  final String token;

  RequestInterceptor(this.dio, {required this.token, required this.apiKey});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers = {'apiKey': apiKey, 'token': token};
    return handler.next(options);
  }
}

class ConnectionException implements Exception {
  ConnectionException() : super();

  @override
  String toString() {
    return 'Connection Timed out, Please check your internet connection and try again';
  }
}

class ServerSideException implements Exception {
  final int statusCode;
  final RequestOptions requestOptions;

  ServerSideException({required this.statusCode, required this.requestOptions});

  @override
  String toString() {
    return 'Server error :)';
  }
}
