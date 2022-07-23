// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/callback/movierepo.dart';
import 'package:dartz/dartz.dart';
import "package:freezed_annotation/freezed_annotation.dart";
import 'package:injectable/injectable.dart';

import '../../backend/models/movies/moviemodel.dart';

part 'movie_bloc_event.dart';
part 'movie_bloc_state.dart';
part 'movie_bloc_bloc.freezed.dart';

@injectable
class MovieBlocBloc extends Bloc<MovieEvent, Movieblocstate> {
  final MovieRepo movieRepo;
  MovieBlocBloc(this.movieRepo) : super(Movieblocstate.initial()) {
    on<_GetTrendingMovie>((event, emit) async {
      emit(state.copyWith(isLoading: true, options: const None()));
      final Either<MainFailures, List<MovieModel>> trendingmov =
          await movieRepo.gettrendingmovie();
      emit(trendingmov.fold(
          (failure) =>
              state.copyWith(isLoading: false, options: Some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              movies: success,
              options: Some(Right(success)))));
    });
  }
}

@injectable
class PopularMovieBloc extends Bloc<MovieEvent, PopularMoviestate> {
  final MovieRepo movieRepo;
  PopularMovieBloc(this.movieRepo) : super(PopularMoviestate.initial()) {
    on<_Getpopular>((event, emit) async {
      emit(state.copyWith(isLoading: true, options: const None()));
      final Either<MainFailures, List<MovieModel>> popularmov =
          await movieRepo.getpopular();
      emit(popularmov.fold(
          (failure) =>
              state.copyWith(isLoading: false, options: Some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              popularmovies: success,
              options: Some(Right(success)))));
    });
  }
}

@injectable
class NowplayingMovieBloc extends Bloc<MovieEvent, NowplayingState> {
  final MovieRepo movieRepo;
  NowplayingMovieBloc(this.movieRepo) : super(NowplayingState.initial()) {
    on<_Getnowplaying>((event, emit) async {
      emit(state.copyWith(isLoading: true, options: const None()));
      final Either<MainFailures, List<MovieModel>> nowplayingmov =
          await movieRepo.getnowplaying();
      emit(nowplayingmov.fold(
          (failure) =>
              state.copyWith(isLoading: false, options: Some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              nowplayingmovies: success,
              options: Some(Right(success)))));
    });
  }
}

@injectable
class UpcomingMovieBloc extends Bloc<MovieEvent, UpcomingState> {
  final MovieRepo movieRepo;
  UpcomingMovieBloc(this.movieRepo) : super(UpcomingState.initial()) {
    on<_Getupcoming>((event, emit) async {
      emit(state.copyWith(isLoading: true, options: const None()));
      final Either<MainFailures, List<MovieModel>> upcomingmov =
          await movieRepo.getupcoming();
      emit(upcomingmov.fold(
          (failure) =>
              state.copyWith(isLoading: false, options: Some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              upcomingmovies: success,
              options: Some(Right(success)))));
    });
  }
}

@injectable
class TopRatedmovieBloc extends Bloc<MovieEvent, TopratedState> {
  final MovieRepo movieRepo;
  TopRatedmovieBloc(this.movieRepo) : super(TopratedState.initial()) {
    on<_Gettoprated>((event, emit) async {
      emit(state.copyWith(isLoading: true, options: const None()));
      final Either<MainFailures, List<MovieModel>> topratedmov =
          await movieRepo.gettoprated();
      emit(topratedmov.fold(
          (failure) =>
              state.copyWith(isLoading: false, options: Some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              topratedmovies: success,
              options: Some(Right(success)))));
    });
  }
}
