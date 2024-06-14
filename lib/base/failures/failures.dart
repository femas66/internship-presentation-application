import 'package:absensipkl/base/failures/http_failure.dart';
import 'package:dio/dio.dart';

class Failure {
  final String message;
  final Exception? exception;

  Failure(this.message, [this.exception]);

  @override
  String toString() {
    return 'Failure{message: $message}';
  }

  factory Failure.fromException(Object e, [StackTrace? st]) {
    if (e is Failure) {
      return e;
    } else if (e is DioException) {
      return HttpFailure.fromDioException(e);
    } else if (e is Exception) {
      return Failure(e.toString());
    } else {
      return Failure(e.toString());
    }
  }
}
