import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/models/images/posterimages.dart';
import 'package:dartz/dartz.dart';

abstract class PosterImagesRepo {
  Future<Either<MainFailures, List<PosterModel>>> getmovieimages(
      {required int movieid});
  Future<Either<MainFailures, List<PosterModel>>> gettvimages(
      {required int tvid});
}
