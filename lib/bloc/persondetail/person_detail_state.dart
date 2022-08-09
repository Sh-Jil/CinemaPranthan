part of 'person_detail_bloc.dart';

@freezed
class PersonDetailState with _$PersonDetailState {
  const factory PersonDetailState(
      {required bool isLoading,
      required Option<Either<MainFailures, List<PersonDetail>>> options,
      required List<PersonDetail> persondetails}) = _PersonDetailState;

  factory PersonDetailState.initial() => const PersonDetailState(
      isLoading: true, options: None(), persondetails: []);
}

@freezed
class PersonCreditState with _$PersonCreditState {
  const factory PersonCreditState(
      {required bool isLoading,
      required Option<Either<MainFailures, List<PersonCredit>>> options,
      required List<PersonCredit> personcredits}) = _PersonCreditState;

  factory PersonCreditState.initial() => const PersonCreditState(
      isLoading: true, options: None(), personcredits: []);
}

@freezed
class PersonImageState with _$PersonImageState {
  const factory PersonImageState(
      {required bool isLoading,
      required Option<Either<MainFailures, List<PersonImage>>> options,
      required List<PersonImage> personimage}) = _PersonImageState;

  factory PersonImageState.initial() =>
      const PersonImageState(isLoading: true, options: None(), personimage: []);
}
