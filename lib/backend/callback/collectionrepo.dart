import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/models/collection/collection.dart';
import 'package:dartz/dartz.dart';

abstract class CollectionRepo {
  Future<Either<MainFailures, CollectionModel>> getMovieSeries(
      {required int collectionId});
}
