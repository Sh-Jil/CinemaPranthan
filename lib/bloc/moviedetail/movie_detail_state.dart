part of 'movie_detail_bloc.dart';

@freezed
class MovieDetailState with _$MovieDetailState {
  const factory MovieDetailState({
    required bool isLoading,
    required List<MovieDetail> moviedetail,
    required Option<Either<MainFailures, List<MovieDetail>>> options,
  }) = _MovieDetailState;

  factory MovieDetailState.initial() =>
      const MovieDetailState(isLoading: true, moviedetail: [], options: None());
}
