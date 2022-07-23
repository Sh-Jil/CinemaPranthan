// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:cinemapranthan/backend/callback/searchtvrepo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../backend/Failures/mainfailure.dart';
import '../../backend/models/tvshows/tvmodel.dart';

part 'searchtv_event.dart';
part 'searchtv_state.dart';
part 'searchtv_bloc.freezed.dart';

@injectable
class SearchtvBloc extends Bloc<SearchTvEvent, SearchTvState> {
  final SearchTvRepo searchtvrepo;
  SearchtvBloc(this.searchtvrepo) : super(SearchTvState.initial()) {
    on<_Searchtv>((event, emit) async {
      final Either<MainFailures, List<TvModel>> result =
          await searchtvrepo.searchtv(tvquery: event.tvquery);

      emit(result.fold(
          (failure) =>
              state.copyWith(isLoading: false, options: Some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              tvshows: success,
              options: Some(Right(success)))));
    });
  }
}
