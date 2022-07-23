import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/models/tvshows/tvmodel.dart';
import 'package:dartz/dartz.dart';

abstract class TvRepo {
  Future<Either<MainFailures, List<TvModel>>> getlatesttv();
  Future<Either<MainFailures, List<TvModel>>> getpopulartv();
  Future<Either<MainFailures, List<TvModel>>> getairingtoday();
  Future<Either<MainFailures, List<TvModel>>> getontv();
  Future<Either<MainFailures, List<TvModel>>> gettopratedtv();
}
