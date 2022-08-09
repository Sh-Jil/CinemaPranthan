part of 'tvbloc_bloc.dart';

@freezed
class TvblocEvent with _$TvblocEvent {
  const factory TvblocEvent.getlatesttv() = _Getlatesttv;

  const factory TvblocEvent.getpopulartv({required int page}) = _Getpopulartv;
  const factory TvblocEvent.getairingtoday({required int page}) =
      _Getairingtoday;
  const factory TvblocEvent.getontv({required int page}) = _Getontv;
  const factory TvblocEvent.gettopratedtv({required int page}) = _Gettopratedtv;
}
