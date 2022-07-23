// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:cinemapranthan/backend/callback/searchmovierepo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../backend/Failures/mainfailure.dart';
import '../../backend/models/movies/moviemodel.dart';

part 'search_movie_bloc.freezed.dart';
part 'search_movie_event.dart';
part 'search_movie_state.dart';

@injectable
class SearchMovieBloc extends Bloc<SearchMovieEvent, SearchMovieState> {
  final SearchMovieRepo searchmovierepo;
  SearchMovieBloc(this.searchmovierepo) : super(SearchMovieState.initial()) {
    on<SearchMovieEvent>((event, emit) async {
      final Either<MainFailures, List<MovieModel>> result =
          await searchmovierepo.searchmovie(moviequery: event.moviequery);

      emit(result.fold(
          (failure) =>
              state.copyWith(isLoading: false, options: Some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              movies: success,
              options: Some(Right(success)))));
    });
  }
}
