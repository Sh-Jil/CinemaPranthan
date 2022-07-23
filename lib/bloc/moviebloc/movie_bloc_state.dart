part of 'movie_bloc_bloc.dart';

@freezed
class Movieblocstate with _$Movieblocstate {
  const factory Movieblocstate(
          {required bool isLoading,
          required List<MovieModel> movies,
          required Option<Either<MainFailures, List<MovieModel>>> options}) =
      _Movieblocstate;

  factory Movieblocstate.initial() =>
      const Movieblocstate(isLoading: false, options: None(), movies: []);
}

@freezed
class PopularMoviestate with _$PopularMoviestate {
  const factory PopularMoviestate(
          {required bool isLoading,
          required List<MovieModel> popularmovies,
          required Option<Either<MainFailures, List<MovieModel>>> options}) =
      _PopularMoviestate;

  factory PopularMoviestate.initial() => const PopularMoviestate(
      isLoading: false, options: None(), popularmovies: []);
}

@freezed
class NowplayingState with _$NowplayingState {
  const factory NowplayingState(
          {required bool isLoading,
          required List<MovieModel> nowplayingmovies,
          required Option<Either<MainFailures, List<MovieModel>>> options}) =
      _NowplayingState;

  factory NowplayingState.initial() => const NowplayingState(
      isLoading: false, options: None(), nowplayingmovies: []);
}

@freezed
class UpcomingState with _$UpcomingState {
  const factory UpcomingState(
          {required bool isLoading,
          required List<MovieModel> upcomingmovies,
          required Option<Either<MainFailures, List<MovieModel>>> options}) =
      _UpcomingState;

  factory UpcomingState.initial() => const UpcomingState(
      isLoading: false, options: None(), upcomingmovies: []);
}

@freezed
class TopratedState with _$TopratedState {
  const factory TopratedState(
          {required bool isLoading,
          required List<MovieModel> topratedmovies,
          required Option<Either<MainFailures, List<MovieModel>>> options}) =
      _TopratedState;

  factory TopratedState.initial() => const TopratedState(
      isLoading: false, options: None(), topratedmovies: []);
}
