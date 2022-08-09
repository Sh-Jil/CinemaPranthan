part of 'tv_detail_bloc.dart';

@freezed
class TvDetailEvent with _$TvDetailEvent {
  const factory TvDetailEvent.gettvdetail({required String tvid}) =
      _GetTvDetail;
}
