import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import '../constants/api_constants.dart';
import 'dio_interceptors.dart';

class DioClient extends GetxService {
  late dio.Dio _dio;

  dio.Dio get dioInstance => _dio;

  @override
  void onInit() {
    super.onInit();
    _initializeDio();
  }

  void _initializeDio() {
    _dio = dio.Dio(
      dio.BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: ApiConstants.connectTimeout,
        receiveTimeout: ApiConstants.receiveTimeout,
        sendTimeout: ApiConstants.sendTimeout,
        headers: ApiConstants.defaultHeaders,
        validateStatus: (status) => status! < 500,
      ),
    );

    // Add interceptors
    _dio.interceptors.addAll([
      LoggingInterceptor(),
      AuthInterceptor(),
      ErrorHandlingInterceptor(),
    ]);
  }

  // Generic GET request
  Future<dio.Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    dio.Options? options,
    dio.CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      return await _dio.get<T>(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
    } catch (e) {
      rethrow;
    }
  }

  // Generic POST request
  Future<dio.Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    dio.Options? options,
    dio.CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      return await _dio.post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } catch (e) {
      rethrow;
    }
  }

  // Generic PUT request
  Future<dio.Response<T>> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    dio.Options? options,
    dio.CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      return await _dio.put<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } catch (e) {
      rethrow;
    }
  }

  // Generic DELETE request
  Future<dio.Response<T>> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    dio.Options? options,
    dio.CancelToken? cancelToken,
  }) async {
    try {
      return await _dio.delete<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
    } catch (e) {
      rethrow;
    }
  }
}
