part of 'related_movies_bloc.dart';

@freezed
class RelatedMoviesEvent with _$RelatedMoviesEvent {
  const factory RelatedMoviesEvent.getrecommended(
      {required int movieid, required int page}) = _GetRecommended;
}
