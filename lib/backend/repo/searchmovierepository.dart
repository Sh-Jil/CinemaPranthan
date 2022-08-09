



import 'package:cinemapranthan/backend/apicall/movies.dart';
import 'package:cinemapranthan/backend/callback/searchmovierepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../Failures/mainfailure.dart';
import '../models/movies/moviemodel.dart';

@LazySingleton(as: SearchMovieRepo)
class SearchMovieRepository implements SearchMovieRepo {

  List<MovieModel> searchmovielist = [];
  @override
  Future<Either<MainFailures, List<MovieModel>>> searchmovie(
      {required String moviequery, required int page}) async {
    try {
      var response = await Dio().get(searchmovieurl,
          queryParameters: {'query': moviequery, 'page': page});
      if (response.statusCode == 200 || response.statusCode == 201) {
        if (page == 1) {
          searchmovielist = (response.data['results'] as List).map((e) {
            return MovieModel.fromJson(e);
          }).toList();
        } else {
          searchmovielist.addAll((response.data['results'] as List).map((e) {
            return MovieModel.fromJson(e);
          }).toList());
        }


        return Right(searchmovielist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }
}
