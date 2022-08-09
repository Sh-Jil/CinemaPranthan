part of 'tv_related_bloc.dart';

@freezed
class TvRelatedState with _$TvRelatedState {
  const factory TvRelatedState(
      {required bool isLoading,
      required List<TvRelatedModel> tvshows,
      required Option<Either<MainFailures, List<TvRelatedModel>>>
          options}) = _TvRelatedState;

  factory TvRelatedState.initial() =>
      const TvRelatedState(isLoading: false, tvshows: [], options: None());
}
