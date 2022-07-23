part of 'search_movie_bloc.dart';

@freezed
class SearchMovieEvent with _$SearchMovieEvent {
  const factory SearchMovieEvent.searchmovie({required String moviequery}) =
      _SearchMovie;
}
