part of 'favourite_bloc.dart';

@freezed
class FavouriteEvent with _$FavouriteEvent {
  const factory FavouriteEvent.getfavourites() = _Started;
  const factory FavouriteEvent.removefavorite(
      {required bool ismovie, required int id}) = _Remove;
}
