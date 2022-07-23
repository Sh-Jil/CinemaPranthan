part of 'cast_crew_bloc.dart';

@freezed
class CastCrewState with _$CastCrewState {
  const factory CastCrewState({
    required bool isLoading,
    required List<CastandCrew> castcrewlists,
    required Option<Either<MainFailures, List<CastandCrew>>> options,
  }) = _CastCrewState;

  factory CastCrewState.initial() =>
      const CastCrewState(isLoading: true, castcrewlists: [], options: None());
}
