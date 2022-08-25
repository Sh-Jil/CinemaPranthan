part of 'collection_bloc.dart';

@freezed
class CollectionState with _$CollectionState {
  const factory CollectionState(
          {required bool isLoading,
          required CollectionModel movieseries,
          required Option<Either<MainFailures, CollectionModel>> options}) =
      _CollectionState;

  factory CollectionState.initial() => const CollectionState(
      isLoading: false,
      movieseries: CollectionModel(id: 0, name: "", overview: "", parts: []),
      options: None());
}
