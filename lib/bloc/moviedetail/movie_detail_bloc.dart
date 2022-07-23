// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/callback/moviedetailrepo.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../backend/models/moviedetail/moviedetail.dart';

part 'movie_detail_bloc.freezed.dart';
part 'movie_detail_event.dart';
part 'movie_detail_state.dart';

@injectable
class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  final MovieDetailRepo moviedetailrepo;
  MovieDetailBloc(this.moviedetailrepo) : super(MovieDetailState.initial()) {
    on<_GetMovieDetail>((event, emit) async {
      emit(state.copyWith(isLoading: true, options: const None()));
      final Either<MainFailures, List<MovieDetail>> result =
          await moviedetailrepo.getmoviedetails(movieparam: event.movieparam);

      emit(result.fold(
          (l) => state.copyWith(isLoading: false, options: Some(left(l))),
          (r) => state.copyWith(
              isLoading: false, moviedetail: r, options: Some(Right(r)))));
    });
  }
}
