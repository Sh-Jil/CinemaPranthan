import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/api_key.dart';
import 'package:cinemapranthan/backend/apicall/movies.dart';
import 'package:cinemapranthan/backend/callback/movierelated.dart';
import 'package:dartz/dartz.dart';
import 'package:cinemapranthan/backend/models/relatedmovie/relatedmoviemodel.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: RelatedMoviesRepo)
class RelatedMovieRepository implements RelatedMoviesRepo {
  List<MovieRelatedModel> recommendedlist = [];
  List<Result> movies = [];
  List<MovieRelatedModel> similarlist = [];
  List<Result> similarmovies = [];

  @override
  Future<Either<MainFailures, List<MovieRelatedModel>>> getrecommended(
      {required int movieid, required int page}) async {
    try {
      final url = "$moviehead$movieid/recommendations?api_key=$api";
      var response = await Dio().get(url, queryParameters: {"page": page});
      if (response.statusCode == 200 || response.statusCode == 201) {
        final int totalpages = response.data['total_pages'];
        if (page == 1) {
          movies = (response.data['results'] as List).map((e) {
            return Result.fromJson(e);
          }).toList();
        } else {
          movies.addAll((response.data['results'] as List).map((e) {
            return Result.fromJson(e);
          }).toList());
        }
        recommendedlist = [
          MovieRelatedModel(results: movies, totalPages: totalpages)
        ];

        return Right(recommendedlist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }

  @override
  Future<Either<MainFailures, List<MovieRelatedModel>>> getsimilar(
      {required int movieid, required int page}) async {
    try {
      final url = "$moviehead$movieid/similar?api_key=$api";
      var response = await Dio().get(url, queryParameters: {"page": page});
      if (response.statusCode == 200 || response.statusCode == 201) {
        final int totalpages = response.data['total_pages'];
        if (page == 1) {
          similarmovies = (response.data['results'] as List).map((e) {
            return Result.fromJson(e);
          }).toList();
        } else {
          similarmovies.addAll((response.data['results'] as List).map((e) {
            return Result.fromJson(e);
          }).toList());
        }
        similarlist = [
          MovieRelatedModel(results: movies, totalPages: totalpages)
        ];

        return Right(similarlist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }
}
