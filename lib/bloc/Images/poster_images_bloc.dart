import 'package:bloc/bloc.dart';
import 'package:cinemapranthan/backend/callback/posterimagesrepo.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../backend/Failures/mainfailure.dart';
import '../../backend/models/images/posterimages.dart';

part 'poster_images_event.dart';
part 'poster_images_state.dart';
part 'poster_images_bloc.freezed.dart';

@injectable
class PosterImagesBloc extends Bloc<PosterImagesEvent, PosterImagesState> {
  final PosterImagesRepo finalrepo;
  PosterImagesBloc(this.finalrepo) : super(PosterImagesState.movieinitial()) {
    on<_GetMovieImages>((event, emit) async {
      emit(state.copyWith(isLoading: true, options: const None()));
      final Either<MainFailures, List<PosterModel>> images =
          await finalrepo.getmovieimages(movieid: event.movieid);

      emit(images.fold(
          (failure) =>
              state.copyWith(isLoading: false, options: Some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              imagelist: success,
              options: Some(Right(success)))));
    });
  }
}

@injectable
class TvPosterImageBloc extends Bloc<PosterImagesEvent, PosterImagesState> {
  final PosterImagesRepo finalrepo;
  TvPosterImageBloc(this.finalrepo) : super(PosterImagesState.tvinitial()) {
    on<_GetTvImages>((event, emit) async {
      emit(state.copyWith(isLoading: true, options: const None()));
      final Either<MainFailures, List<PosterModel>> images =
          await finalrepo.gettvimages(tvid: event.tvid);

      emit(images.fold(
          (failure) =>
              state.copyWith(isLoading: false, options: Some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              imagelist: success,
              options: Some(Right(success)))));
    });
  }
}
