import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/api_key.dart';

import 'package:cinemapranthan/backend/apicall/movies.dart';

import 'package:cinemapranthan/backend/callback/moviedetailrepo.dart';
import 'package:cinemapranthan/backend/models/moviedetail/moviedetail.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MovieDetailRepo)
class MovieDetailRepository implements MovieDetailRepo {
  @override
  Future<Either<MainFailures, List<MovieDetail>>> getmoviedetails(
      {required movieparam}) async {
    try {

      var url = "$moviedetail$movieparam?api_key=$api";

      var response = await Dio().get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        List<MovieDetail> moviedetailist = [];
        final parsed = MovieDetail.fromJson(response.data);
        moviedetailist.add(parsed);
        return Right(moviedetailist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }
}
