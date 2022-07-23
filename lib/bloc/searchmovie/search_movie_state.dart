part of 'search_movie_bloc.dart';

@freezed
class SearchMovieState with _$SearchMovieState {
  const factory SearchMovieState(
          {required bool isLoading,
          required List<MovieModel> movies,
          required Option<Either<MainFailures, List<MovieModel>>> options}) =
      _SearchMovieState;

  factory SearchMovieState.initial() =>
      const SearchMovieState(isLoading: false, options: None(), movies: []);
}
