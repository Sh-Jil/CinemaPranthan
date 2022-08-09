import 'package:bloc/bloc.dart';
import 'package:cinemapranthan/backend/callback/movierelated.dart';
import 'package:cinemapranthan/backend/models/relatedmovie/relatedmoviemodel.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../backend/Failures/mainfailure.dart';

part 'related_movies_event.dart';
part 'related_movies_state.dart';
part 'related_movies_bloc.freezed.dart';

@injectable
class RelatedMoviesBloc extends Bloc<RelatedMoviesEvent, RelatedMoviesState> {
  final RelatedMoviesRepo repo;
  RelatedMoviesBloc(this.repo) : super(RelatedMoviesState.initial()) {
    on<_GetRecommended>((event, emit) async {
      emit(state.copyWith(isLoading: true, option: const None()));
      final Either<MainFailures, List<MovieRelatedModel>> result =
          await repo.getrecommended(movieid: event.movieid, page: event.page);
      emit(result.fold(
          (l) => state.copyWith(isLoading: false, option: Some(left(l))),
          (r) => state.copyWith(
              isLoading: false, option: Some(Right(r)), movies: r)));
    });
  }
}
