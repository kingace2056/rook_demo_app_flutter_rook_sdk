import 'dart:developer';
import 'package:dio/dio.dart' as dio;

class LoggingInterceptor extends dio.Interceptor {
  @override
  void onRequest(
    dio.RequestOptions options,
    dio.RequestInterceptorHandler handler,
  ) {
    log('🚀 REQUEST[${options.method}] => PATH: ${options.path}');
    log('🚀 REQUEST HEADERS: ${options.headers}');
    if (options.data != null) {
      log('🚀 REQUEST DATA: ${options.data}');
    }
    if (options.queryParameters.isNotEmpty) {
      log('🚀 REQUEST QUERY PARAMS: ${options.queryParameters}');
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(
    dio.Response response,
    dio.ResponseInterceptorHandler handler,
  ) {
    log(
      '✅ RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}',
    );
    log('✅ RESPONSE DATA: ${response.data}');
    super.onResponse(response, handler);
  }

  @override
  void onError(dio.DioException err, dio.ErrorInterceptorHandler handler) {
    log(
      '❌ ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
    );
    log('❌ ERROR MESSAGE: ${err.message}');
    if (err.response?.data != null) {
      log('❌ ERROR DATA: ${err.response?.data}');
    }
    super.onError(err, handler);
  }
}

class AuthInterceptor extends dio.Interceptor {
  @override
  void onRequest(
    dio.RequestOptions options,
    dio.RequestInterceptorHandler handler,
  ) {
    // Add authorization headers if needed
    // For example, if you have user tokens:
    // final token = GetStorage().read('auth_token');
    // if (token != null) {
    //   options.headers['Authorization'] = 'Bearer $token';
    // }

    super.onRequest(options, handler);
  }
}

class ErrorHandlingInterceptor extends dio.Interceptor {
  @override
  void onError(dio.DioException err, dio.ErrorInterceptorHandler handler) {
    switch (err.type) {
      case dio.DioExceptionType.connectionTimeout:
      case dio.DioExceptionType.sendTimeout:
      case dio.DioExceptionType.receiveTimeout:
        throw TimeoutException(err.message ?? 'Request timeout');
      case dio.DioExceptionType.badResponse:
        throw ServerException(_getErrorMessage(err));
      case dio.DioExceptionType.connectionError:
        throw NetworkException('Network connection error');
      case dio.DioExceptionType.cancel:
        throw RequestCancelledException('Request was cancelled');
      default:
        throw UnknownException(err.message ?? 'Unknown error occurred');
    }
  }

  String _getErrorMessage(dio.DioException err) {
    if (err.response?.data != null) {
      final data = err.response!.data;
      if (data is Map<String, dynamic>) {
        return data['error'] ?? data['message'] ?? 'Server error occurred';
      }
    }
    return 'Server error: ${err.response?.statusCode}';
  }
}

// Custom exceptions
class TimeoutException implements Exception {
  final String message;
  TimeoutException(this.message);

  @override
  String toString() => 'TimeoutException: $message';
}

class ServerException implements Exception {
  final String message;
  ServerException(this.message);

  @override
  String toString() => 'ServerException: $message';
}

class NetworkException implements Exception {
  final String message;
  NetworkException(this.message);

  @override
  String toString() => 'NetworkException: $message';
}

class RequestCancelledException implements Exception {
  final String message;
  RequestCancelledException(this.message);

  @override
  String toString() => 'RequestCancelledException: $message';
}

class UnknownException implements Exception {
  final String message;
  UnknownException(this.message);

  @override
  String toString() => 'UnknownException: $message';
}
