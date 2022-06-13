import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'api_constants.dart';

final dioProvider = Provider((ref) => AppDio.getInstance());

class AppDio with DioMixin implements Dio {
  AppDio._([BaseOptions? options]) {
    options = BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      contentType: 'application/json',
      connectTimeout: 10000,
      sendTimeout: 10000,
      receiveTimeout: 10000,
    );

    this.options = options;

    /// interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
    ///   options.headers.addAll(await userAgentClientHintsHeader());
    ///   handler.next(options);
    /// }));

    /// interceptors.add(LogInterceptor(responseBody: true, requestBody: true));

    httpClientAdapter = DefaultHttpClientAdapter();
  }

  static Dio getInstance() => AppDio._();
}
