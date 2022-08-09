part of 'related_movies_bloc.dart';

@freezed
class RelatedMoviesState with _$RelatedMoviesState {
  const factory RelatedMoviesState(
      {required bool isLoading,
      required List<MovieRelatedModel> movies,
      required Option<Either<MainFailures, List<MovieRelatedModel>>>
          option}) = _RelatedMoviesState;

  factory RelatedMoviesState.initial() =>
      const RelatedMoviesState(isLoading: false, movies: [], option: None());
}
