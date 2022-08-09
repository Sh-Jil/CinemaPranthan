part of 'tv_related_bloc.dart';

@freezed
class TvRelatedEvent with _$TvRelatedEvent {
  const factory TvRelatedEvent.getrecommended(
      {required int tvid, required int page}) = _GetRecommended;
}
