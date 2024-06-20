import 'package:absensipkl/base/failures/failures.dart';
import 'package:absensipkl/domain/models/team.dart';
import 'package:absensipkl/domain/repositories/presentation_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeNotifier extends ChangeNotifier {
  final PresentationRepository _presentationRepository;
  HomeNotifier(this._presentationRepository);
  Failure? _failure;
  Failure? get failure => _failure;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<Team?> doPresentation(String rfid) async {
    _failure = null;
    _isLoading = true;
    notifyListeners();

    final response = await _presentationRepository.doPresentation(rfid);
    return response.fold((left) {
      _failure = left;
      _isLoading = false;
      notifyListeners();

      return null;
    }, (right) {
      _isLoading = false;
      notifyListeners();

      return right;
    });
  }
}

final homeProvider = ChangeNotifierProvider((ref) {
  final PresentationRepository presentationRepository =
      ref.read(presentationRepositoryProvider);
  return HomeNotifier(presentationRepository);
});
