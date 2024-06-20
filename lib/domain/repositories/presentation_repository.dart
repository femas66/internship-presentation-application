import 'package:absensipkl/base/failures/failures.dart';
import 'package:absensipkl/base/providers/dio_provider.dart';
import 'package:absensipkl/data/repositories/presentation_repository_impl.dart';
import 'package:absensipkl/domain/models/team.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'presentation_repository.g.dart';

abstract class PresentationRepository {
  Future<Either<Failure, Team>> doPresentation(String rfid);
}

@riverpod
PresentationRepository presentationRepository(Ref ref) {
  final Dio dio = ref.read(dioProvider);
  return PresentationRepositoryImpl(dio);
}
