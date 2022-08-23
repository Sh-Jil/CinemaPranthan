part of 'poster_images_bloc.dart';

@freezed
class PosterImagesEvent with _$PosterImagesEvent {
  const factory PosterImagesEvent.getmovieimages({required int movieid}) =
      _GetMovieImages;
  const factory PosterImagesEvent.gettvimages({required int tvid}) =
      _GetTvImages;
}
