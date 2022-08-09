import 'package:bloc/bloc.dart';
import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/callback/tvdetailrepo.dart';
import 'package:cinemapranthan/backend/models/tvdetail/tvdetail.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tv_detail_event.dart';
part 'tv_detail_state.dart';
part 'tv_detail_bloc.freezed.dart';

@injectable
class TvDetailBloc extends Bloc<TvDetailEvent, TvDetailState> {
  final TvDetailRepo tvdetails;
  TvDetailBloc(this.tvdetails) : super(TvDetailState.initial()) {
    on<TvDetailEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true, options: const None()));
      final Either<MainFailures, List<TvDetailsModel>> result =
          await tvdetails.gettvdetails(tvid: event.tvid);

      emit(result.fold(
          (l) => state.copyWith(isLoading: false, options: Some(left(l))),
          (r) => state.copyWith(
              isLoading: false, options: Some(right(r)), tvdetails: r)));
    });
  }
}
