part of 'movie_bloc_bloc.dart';

@freezed
class MovieEvent with _$MovieEvent {
  const factory MovieEvent.gettrendingmovie() = _GetTrendingMovie;
  const factory MovieEvent.getpopular() = _Getpopular;
  const factory MovieEvent.getupcoming() = _Getupcoming;
  const factory MovieEvent.getnowplaying() = _Getnowplaying;
  const factory MovieEvent.gettoprated() = _Gettoprated;
}
