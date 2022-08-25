part of 'collection_bloc.dart';

@freezed
class CollectionEvent with _$CollectionEvent {
  const factory CollectionEvent.getmovieseries({required int collectionId}) =
      _GetMovieSeries;
}
