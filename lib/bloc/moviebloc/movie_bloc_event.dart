part of 'movie_bloc_bloc.dart';

@freezed
class MovieEvent with _$MovieEvent {
  const factory MovieEvent.gettrendingmovie() = _GetTrendingMovie;

  const factory MovieEvent.getpopular({required int page}) = _Getpopular;
  const factory MovieEvent.getupcoming({required int page}) = _Getupcoming;
  const factory MovieEvent.getnowplaying({required int page}) = _Getnowplaying;
  const factory MovieEvent.gettoprated({required int page}) = _Gettoprated;
}
