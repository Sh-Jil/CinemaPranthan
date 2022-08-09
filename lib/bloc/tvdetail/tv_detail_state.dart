part of 'tv_detail_bloc.dart';

@freezed
class TvDetailState with _$TvDetailState {
  const factory TvDetailState({
    required bool isLoading,
    required Option<Either<MainFailures, List<TvDetailsModel>>> options,
    required List<TvDetailsModel> tvdetails,
  }) = _TvDetailState;

  factory TvDetailState.initial() =>
      const TvDetailState(isLoading: true, options: None(), tvdetails: []);
}
