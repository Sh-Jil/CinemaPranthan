// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/callback/starcast.dart';
import 'package:cinemapranthan/backend/models/starcast/starcastmodel.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cast_crew_event.dart';
part 'cast_crew_state.dart';
part 'cast_crew_bloc.freezed.dart';

@injectable
class CastCrewBloc extends Bloc<CastCrewEvent, CastCrewState> {
  final StarCastRepo starcastrepo;
  CastCrewBloc(this.starcastrepo) : super(CastCrewState.initial()) {
    on<_Getcastcrew>((event, emit) async {
      emit(state.copyWith(isLoading: true, options: const None()));
      final Either<MainFailures, List<CastandCrew>> castandcrew =
          await starcastrepo.getcastcrew(movieid: event.movieid);
      emit(castandcrew.fold(
          (l) => state.copyWith(isLoading: false, options: Some(left(l))),
          (r) => state.copyWith(
              isLoading: false, castcrewlists: r, options: Some(right(r)))));
    });
  }
}
