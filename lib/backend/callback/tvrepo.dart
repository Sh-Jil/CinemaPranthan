import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/models/tvshows/tvmodel.dart';
import 'package:dartz/dartz.dart';

abstract class TvRepo {
  Future<Either<MainFailures, List<TvModel>>> getlatesttv();


  Future<Either<MainFailures, List<TvModel>>> getpopulartv({required int page});
  Future<Either<MainFailures, List<TvModel>>> getairingtoday(
      {required int page});
  Future<Either<MainFailures, List<TvModel>>> getontv({required int page});
  Future<Either<MainFailures, List<TvModel>>> gettopratedtv(
      {required int page});
}
