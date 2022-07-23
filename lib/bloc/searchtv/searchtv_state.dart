part of 'searchtv_bloc.dart';

@freezed
class SearchTvState with _$SearchTvState {
  const factory SearchTvState(
          {required bool isLoading,
          required List<TvModel> tvshows,
          required Option<Either<MainFailures, List<TvModel>>> options}) =
      _SearchTvState;

  factory SearchTvState.initial() =>
      const SearchTvState(isLoading: false, tvshows: [], options: None());
}
