part of 'person_detail_bloc.dart';

@freezed
class PersonDetailEvent with _$PersonDetailEvent {
  const factory PersonDetailEvent.getdetails({required String personid}) =
      _Getdetails;
  const factory PersonDetailEvent.getcredits({required String personid}) =
      _GetCredits;
  const factory PersonDetailEvent.getimages({required String personid}) =
      _GetImages;
}
