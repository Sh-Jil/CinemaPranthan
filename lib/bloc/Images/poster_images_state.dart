part of 'poster_images_bloc.dart';

@freezed
class PosterImagesState with _$PosterImagesState {
  const factory PosterImagesState(
          {required bool isLoading,
          required List<PosterModel> imagelist,
          required Option<Either<MainFailures, List<PosterModel>>> options}) =
      _PosterImagesState;

  factory PosterImagesState.movieinitial() =>
      const PosterImagesState(isLoading: false, imagelist: [], options: None());
  factory PosterImagesState.tvinitial() =>
      const PosterImagesState(isLoading: false, imagelist: [], options: None());
}
