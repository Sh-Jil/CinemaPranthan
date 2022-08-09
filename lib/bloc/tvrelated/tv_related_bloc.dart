import 'package:bloc/bloc.dart';
import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../backend/callback/movierelated.dart';
import '../../backend/models/relatedtv/tv_related_model.dart';

part 'tv_related_event.dart';
part 'tv_related_state.dart';
part 'tv_related_bloc.freezed.dart';

@injectable
class TvRelatedBloc extends Bloc<TvRelatedEvent, TvRelatedState> {
  final RelatedTvRepo repo;
  TvRelatedBloc(this.repo) : super(TvRelatedState.initial()) {
    on<_GetRecommended>((event, emit) async {
      emit(state.copyWith(isLoading: true, options: const None()));
      final Either<MainFailures, List<TvRelatedModel>> result =
          await repo.getrecommended(tvid: event.tvid, page: event.page);
      emit(result.fold(
          (l) => state.copyWith(isLoading: false, options: Some(left(l))),
          (r) => state.copyWith(
              isLoading: false, options: Some(right(r)), tvshows: r)));
    });
  }
}
