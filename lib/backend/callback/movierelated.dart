import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/models/relatedmovie/relatedmoviemodel.dart';
import 'package:cinemapranthan/backend/models/relatedtv/tv_related_model.dart';
import 'package:dartz/dartz.dart';

abstract class RelatedMoviesRepo {
  Future<Either<MainFailures, List<MovieRelatedModel>>> getrecommended(
      {required int movieid, required int page});
  Future<Either<MainFailures, List<MovieRelatedModel>>> getsimilar(
      {required int movieid, required int page});
}

abstract class RelatedTvRepo {
  Future<Either<MainFailures, List<TvRelatedModel>>> getrecommended(
      {required int tvid, required int page});
}
