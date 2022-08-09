part of 'tv_season_detail_bloc.dart';

@freezed
class TvSeasonDetailEvent with _$TvSeasonDetailEvent {
  const factory TvSeasonDetailEvent.getdetails(
      {required String tvid, required String seasonno}) = _GetDetails;
}
