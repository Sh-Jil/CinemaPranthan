import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/callback/movierepo.dart';
import 'package:dartz/dartz.dart';
import 'package:cinemapranthan/backend/models/movies/moviemodel.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../apicall/movies.dart';

@LazySingleton(as: MovieRepo)
class MovieRepository implements MovieRepo {
  @override
  Future<Either<MainFailures, List<MovieModel>>> gettrendingmovie() async {
    try {
      var response = await Dio().get(trendingmovies);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<MovieModel> trendingmovielist =
            (response.data['results'] as List).map((e) {
          return MovieModel.fromJson(e);
        }).toList();
        return Right(trendingmovielist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }

  @override
  Future<Either<MainFailures, List<MovieModel>>> getpopular() async {
    try {
      var response = await Dio().get(popular);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<MovieModel> popularmovielist =
            (response.data['results'] as List).map((e) {
          return MovieModel.fromJson(e);
        }).toList();
        return Right(popularmovielist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }

  @override
  Future<Either<MainFailures, List<MovieModel>>> getupcoming() async {
    try {
      var response = await Dio().get(upcoming);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<MovieModel> upcominglist =
            (response.data['results'] as List).map((e) {
          return MovieModel.fromJson(e);
        }).toList();
        return Right(upcominglist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }

  @override
  Future<Either<MainFailures, List<MovieModel>>> getnowplaying() async {
    try {
      var response = await Dio().get(nowplaying);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<MovieModel> nowplayinglist =
            (response.data['results'] as List).map((e) {
          return MovieModel.fromJson(e);
        }).toList();
        return Right(nowplayinglist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }

  @override
  Future<Either<MainFailures, List<MovieModel>>> gettoprated() async {
    try {
      var response = await Dio().get(toprated);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<MovieModel> topratedlist =
            (response.data['results'] as List).map((e) {
          return MovieModel.fromJson(e);
        }).toList();
        return Right(topratedlist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }
}
