import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/models/movies/moviemodel.dart';
import 'package:dartz/dartz.dart';

abstract class SearchMovieRepo {
  Future<Either<MainFailures, List<MovieModel>>> searchmovie(


      {required String moviequery, required int page});

}
