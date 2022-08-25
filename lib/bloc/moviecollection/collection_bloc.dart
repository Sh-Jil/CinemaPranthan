import 'package:bloc/bloc.dart';
import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/callback/collectionrepo.dart';
import 'package:cinemapranthan/backend/models/collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'collection_event.dart';
part 'collection_state.dart';
part 'collection_bloc.freezed.dart';

@injectable
class CollectionBloc extends Bloc<CollectionEvent, CollectionState> {
  final CollectionRepo repo;
  CollectionBloc(this.repo) : super(CollectionState.initial()) {
    on<_GetMovieSeries>((event, emit) async {
      emit(state.copyWith(isLoading: true, options: const None()));
      final Either<MainFailures, CollectionModel> result =
          await repo.getMovieSeries(collectionId: event.collectionId);
      emit(result.fold(
          (l) => state.copyWith(isLoading: false, options: Some(left(l))),
          (r) => state.copyWith(
              isLoading: false, options: Some(Right(r)), movieseries: r)));
    });
  }
}
