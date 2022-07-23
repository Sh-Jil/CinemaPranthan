part of 'tvbloc_bloc.dart';

@freezed
class TvblocState with _$TvblocState {
  const factory TvblocState(
          {required bool isLoading,
          required List<TvModel> tvshows,
          required Option<Either<MainFailures, List<TvModel>>> options}) =
      _TvblocState;

  factory TvblocState.initial() =>
      const TvblocState(isLoading: false, tvshows: [], options: None());
}

@freezed
class PopularTvState with _$PopularTvState {
  const factory PopularTvState(
          {required bool isLoading,
          required List<TvModel> tvshows,
          required Option<Either<MainFailures, List<TvModel>>> options}) =
      _PopularTvState;

  factory PopularTvState.initial() =>
      const PopularTvState(isLoading: false, tvshows: [], options: None());
}

@freezed
class AiringtodayState with _$AiringtodayState {
  const factory AiringtodayState(
          {required bool isLoading,
          required List<TvModel> tvshows,
          required Option<Either<MainFailures, List<TvModel>>> options}) =
      _AiringtodayState;

  factory AiringtodayState.initial() =>
      const AiringtodayState(isLoading: false, tvshows: [], options: None());
}

@freezed
class OnTvSTate with _$OnTvSTate {
  const factory OnTvSTate(
          {required bool isLoading,
          required List<TvModel> tvshows,
          required Option<Either<MainFailures, List<TvModel>>> options}) =
      _OnTvSTate;

  factory OnTvSTate.initial() =>
      const OnTvSTate(isLoading: false, tvshows: [], options: None());
}

@freezed
class TopratedTvState with _$TopratedTvState {
  const factory TopratedTvState(
          {required bool isLoading,
          required List<TvModel> tvshows,
          required Option<Either<MainFailures, List<TvModel>>> options}) =
      _TopratedTvState;

  factory TopratedTvState.initial() =>
      const TopratedTvState(isLoading: false, tvshows: [], options: None());
}
