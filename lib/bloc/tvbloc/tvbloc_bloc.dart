// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:cinemapranthan/backend/models/tvshows/tvmodel.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../backend/Failures/mainfailure.dart';
import '../../../backend/callback/tvrepo.dart';

part 'tvbloc_bloc.freezed.dart';
part 'tvbloc_event.dart';
part 'tvbloc_state.dart';

@injectable
class TvblocBloc extends Bloc<TvblocEvent, TvblocState> {
  final TvRepo tvrepo;
  TvblocBloc(this.tvrepo) : super(TvblocState.initial()) {
    on<_Getlatesttv>((event, emit) async {
      emit(state.copyWith(isLoading: true, options: const None()));
      final Either<MainFailures, List<TvModel>> latesttv =
          await tvrepo.getlatesttv();

      emit(latesttv.fold(
          (failure) =>
              state.copyWith(isLoading: false, options: Some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              tvshows: success,
              options: Some(Right(success)))));
    });
  }
}

@injectable
class PopulartvBloc extends Bloc<TvblocEvent, PopularTvState> {
  final TvRepo tvrepo;
  PopulartvBloc(this.tvrepo) : super(PopularTvState.initial()) {
    on<_Getpopulartv>((event, emit) async {
      emit(state.copyWith(isLoading: true, options: const None()));
      final Either<MainFailures, List<TvModel>> populartv =
          await tvrepo.getlatesttv();
      emit(populartv.fold(
          (failure) =>
              state.copyWith(isLoading: false, options: Some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              tvshows: success,
              options: Some(Right(success)))));
    });
  }
}

@injectable
class AiringTodayBloc extends Bloc<TvblocEvent, AiringtodayState> {
  final TvRepo tvrepo;
  AiringTodayBloc(this.tvrepo) : super(AiringtodayState.initial()) {
    on<_Getairingtoday>((event, emit) async {
      emit(state.copyWith(isLoading: true, options: const None()));
      final Either<MainFailures, List<TvModel>> airingtodaytv =
          await tvrepo.getairingtoday();
      emit(airingtodaytv.fold(
          (failure) =>
              state.copyWith(isLoading: false, options: Some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              tvshows: success,
              options: Some(Right(success)))));
    });
  }
}

@injectable
class OnTVBloc extends Bloc<TvblocEvent, OnTvSTate> {
  final TvRepo tvrepo;
  OnTVBloc(this.tvrepo) : super(OnTvSTate.initial()) {
    on<_Getontv>((event, emit) async {
      emit(state.copyWith(isLoading: true, options: const None()));
      final Either<MainFailures, List<TvModel>> ontv = await tvrepo.getontv();

      emit(ontv.fold(
          (failure) =>
              state.copyWith(isLoading: false, options: Some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              tvshows: success,
              options: Some(Right(success)))));
    });
  }
}

@injectable
class TopratedTvBloc extends Bloc<TvblocEvent, TopratedTvState> {
  final TvRepo tvrepo;
  TopratedTvBloc(this.tvrepo) : super(TopratedTvState.initial()) {
    on<_Gettopratedtv>((event, emit) async {
      emit(state.copyWith(isLoading: true, options: const None()));
      final Either<MainFailures, List<TvModel>> topratedtv =
          await tvrepo.gettopratedtv();
      emit(topratedtv.fold(
          (failure) =>
              state.copyWith(isLoading: false, options: Some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              tvshows: success,
              options: Some(Right(success)))));
    });
  }
}
