part of 'cast_crew_bloc.dart';

@freezed
class CastCrewEvent with _$CastCrewEvent {
  const factory CastCrewEvent.getcastcrew({required String movieid}) =
      _Getcastcrew;
}
