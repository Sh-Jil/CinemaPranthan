part of 'tv_season_detail_bloc.dart';

@freezed
class TvSeasonDetailState with _$TvSeasonDetailState {
  const factory TvSeasonDetailState(
      {required bool isLoading,
      required Option<Either<MainFailures, List<SeasonDetailsModel>>> options,
      required List<SeasonDetailsModel> seasondetail}) = _TvSeasonDetailState;

  factory TvSeasonDetailState.initial() =>
      const TvSeasonDetailState(isLoading: true, options: None(), seasondetail: []);
}
