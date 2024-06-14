import 'package:absensipkl/base/common/app_config.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@riverpod
Dio dio(Ref ref) {
  final dio = Dio(BaseOptions(
    baseUrl: AppConfig.baseUrl,
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    },
  ));

  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      final box = GetStorage();

      if (box.read('isLoggedIn') ?? false) {
        options.headers['Authorization'] = 'Bearer ${box.read('token')}';
      }

      return handler.next(options);
    },
  ));

  return dio;
}
