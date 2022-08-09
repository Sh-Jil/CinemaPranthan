// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/callback/seasondetailrepo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../backend/models/tvseasondetail/seasondetail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_season_detail_event.dart';
part 'tv_season_detail_state.dart';
part 'tv_season_detail_bloc.freezed.dart';

@injectable
class TvSeasonDetailBloc
    extends Bloc<TvSeasonDetailEvent, TvSeasonDetailState> {
  final SeasonDetailRepo seasondetailsrepo;
  TvSeasonDetailBloc(this.seasondetailsrepo)
      : super(TvSeasonDetailState.initial()) {
    on<_GetDetails>((event, emit) async {
      emit(state.copyWith(isLoading: true, options: const None()));
      final Either<MainFailures, List<SeasonDetailsModel>> result =
          await seasondetailsrepo.getseassondetails(
              tvid: event.tvid, seasonno: event.seasonno);
      emit(result.fold(
          (l) => state.copyWith(isLoading: false, options: Some(left(l))),
          (r) => state.copyWith(
              isLoading: false, options: Some(right(r)), seasondetail: r)));
    });
  }
}
