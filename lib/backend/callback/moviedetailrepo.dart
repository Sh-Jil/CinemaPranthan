import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/models/moviedetail/moviedetail.dart';
import 'package:dartz/dartz.dart';

abstract class MovieDetailRepo {
  Future<Either<MainFailures, List<MovieDetail>>> getmoviedetails(
      {required movieparam});
}
