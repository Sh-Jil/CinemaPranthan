part of 'favourite_bloc.dart';

@freezed
class FavouriteState with _$FavouriteState {
  const factory FavouriteState(
      {required bool isLoading,
      required List<Favourites> favlist}) = _FavouriteState;

  factory FavouriteState.initial() =>
      const FavouriteState(isLoading: true, favlist: []);
}
