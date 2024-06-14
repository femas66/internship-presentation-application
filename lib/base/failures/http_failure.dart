import 'dart:io';

import 'package:absensipkl/base/failures/failures.dart';
import 'package:dio/dio.dart';

class HttpFailure extends Failure {
  final DioException? dioException;

  HttpFailure(
    super.message, {
    this.dioException,
  });

  factory HttpFailure.fromDioException(DioException error,
      [Function(DioException)? reporter]) {
    String message = 'Unknown network error';
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        message = 'Connection timeout';
        reporter?.call(error);
        break;
      case DioExceptionType.sendTimeout:
        message = 'Send timeout';
        reporter?.call(error);

        break;
      case DioExceptionType.receiveTimeout:
        message = 'Receive timeout';
        reporter?.call(error);
        break;
      case DioExceptionType.badResponse:
        final response = error.response!;

        if (response.statusCode == 401) {
          message = 'Unauthorized';
        } else if (response.statusCode == 403) {
          message = 'Forbidden';
        } else if (response.statusCode == 404) {
          message = 'Not found';
          reporter?.call(error);
        } else if (response.statusCode == 422) {
          message = response.data['meta']['message'];
        } else if (response.statusCode == 500) {
          message = 'Internal server error';
          reporter?.call(error);
        } else if (response.statusCode == 502) {
          message = 'Bad gateway';
          reporter?.call(error);
        } else if (response.statusCode == 503) {
          message = 'Service unavailable';
          reporter?.call(error);
        } else if (response.statusCode == 504) {
          message = 'Gateway timeout';
          reporter?.call(error);
        } else if (response.statusCode == 505) {
          message = 'HTTP version not supported';
          reporter?.call(error);
        } else {
          message = 'Unknown error';
          reporter?.call(error);
        }

        if (response.data is Map<String, dynamic> &&
            response.data['meta']['message'] != null) {
          message = response.data['meta']['message'].toString();
        }

        break;
      case DioExceptionType.cancel:
        message = 'Request cancelled';
        break;
      case DioExceptionType.connectionError:
        if (error.error is SocketException) {
          message = 'Tidak ada koneksi internet';
        } else {
          reporter?.call(error);
        }

        break;
      case DioExceptionType.badCertificate:
        message = 'Bad Certificate';
        reporter?.call(error);
        break;
      case DioExceptionType.unknown:
        message = 'Unknown error';
        reporter?.call(error);
        break;
    }

    return HttpFailure(
      message,
      dioException: error,
    );
  }
}