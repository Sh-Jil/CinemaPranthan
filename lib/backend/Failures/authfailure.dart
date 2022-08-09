import 'package:freezed_annotation/freezed_annotation.dart';

part 'authfailure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledbyuser() = _CancelledByUser;
  const factory AuthFailure.servererror() = _ServerError;
}
