part of 'tvbloc_bloc.dart';

@freezed
class TvblocEvent with _$TvblocEvent {
  const factory TvblocEvent.getlatesttv() = _Getlatesttv;
  const factory TvblocEvent.getpopulartv() = _Getpopulartv;
  const factory TvblocEvent.getairingtoday() = _Getairingtoday;
  const factory TvblocEvent.getontv() = _Getontv;
  const factory TvblocEvent.gettopratedtv() = _Gettopratedtv;
}
