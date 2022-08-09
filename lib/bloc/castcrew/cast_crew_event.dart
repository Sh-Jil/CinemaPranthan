part of 'cast_crew_bloc.dart';

@freezed
class CastCrewEvent with _$CastCrewEvent {
  const factory CastCrewEvent.getcastcrew({required String movieid}) =
      _Getcastcrew;

  const factory CastCrewEvent.gettvshowcredit({required String tvid}) =
      _GetTvShowCredit;
  const factory CastCrewEvent.getseasoncredit(
      {required String tvid, required String seasonno}) = _GetSeasonCredit;
}
