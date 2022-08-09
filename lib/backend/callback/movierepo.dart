import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/models/movies/moviemodel.dart';
import 'package:dartz/dartz.dart';

abstract class MovieRepo {
  Future<Either<MainFailures, List<MovieModel>>> gettrendingmovie();

  Future<Either<MainFailures, List<MovieModel>>> getpopular(
      {required int page});
  Future<Either<MainFailures, List<MovieModel>>> getupcoming(
      {required int page});
  Future<Either<MainFailures, List<MovieModel>>> getnowplaying(
      {required int page});
  Future<Either<MainFailures, List<MovieModel>>> gettoprated(
      {required int page});
}
