part of 'searchtv_bloc.dart';

@freezed
class SearchTvEvent with _$SearchTvEvent {
 

  const factory SearchTvEvent.searchtv(
      {required String tvquery, required int page}) = _Searchtv;
}
