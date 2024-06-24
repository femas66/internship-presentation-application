import 'dart:developer';

import 'package:absensipkl/base/failures/failures.dart';
import 'package:absensipkl/data/entities/responses/team_response.dart';
import 'package:absensipkl/domain/models/team.dart';
import 'package:absensipkl/domain/repositories/presentation_repository.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/src/either.dart';

class PresentationRepositoryImpl implements PresentationRepository {
  final Dio _dio;
  PresentationRepositoryImpl(this._dio);

  @override
  Future<Either<Failure, Team>> doPresentation(String rfid) async {
    try {
      final response = await _dio.post('submit-presentation', data: {
        "rfid": rfid,
      });
      return Future.value(
          Right(TeamResponse.fromJson(response.data['data']).toTeam()));
    } catch (e, st) {
      if (e is DioException) {
        print(e.response!.data);
        print(e.response!.statusCode);
      }
      print(e);
      return Future.value(Left(Failure.fromException(e, st)));
    }
  }
}
