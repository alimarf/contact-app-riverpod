import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.serverError({required String message}) = ServerFailure;
  const factory Failure.cacheError() = CacheFailure;
  const factory Failure.networkError() = NetworkFailure;
  const factory Failure.invalidInput() = InvalidInputFailure;
  const factory Failure.unauthorized() = UnauthorizedFailure;
} 