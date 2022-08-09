import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/callback/movierepo.dart';
import 'package:dartz/dartz.dart';
import 'package:cinemapranthan/backend/models/movies/moviemodel.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../apicall/movies.dart';

@LazySingleton(as: MovieRepo)
class MovieRepository implements MovieRepo {
  List<MovieModel> popularmovielist = [];
  List<MovieModel> upcominglist = [];
  List<MovieModel> nowplayinglist = [];
  List<MovieModel> topratedlist = [];

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
  Future<Either<MainFailures, List<MovieModel>>> getpopular(
      {required int page}) async {
    try {
      var response = await Dio().get(popular, queryParameters: {"page": page});
      if (response.statusCode == 200 || response.statusCode == 201) {
        if (page == 1) {
          popularmovielist = (response.data['results'] as List).map((e) {
            return MovieModel.fromJson(e);
          }).toList();
        } else {
          popularmovielist.addAll((response.data['results'] as List).map((e) {
            return MovieModel.fromJson(e);
          }).toList());
        }

        return Right(popularmovielist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }

  @override
  Future<Either<MainFailures, List<MovieModel>>> getupcoming(
      {required int page}) async {
    try {
      var response = await Dio().get(upcoming, queryParameters: {"page": page});
      if (response.statusCode == 200 || response.statusCode == 201) {
        if (page == 1) {
          upcominglist = (response.data['results'] as List).map((e) {
            return MovieModel.fromJson(e);
          }).toList();
        } else {
          upcominglist.addAll((response.data['results'] as List).map((e) {
            return MovieModel.fromJson(e);
          }).toList());
        }

        return Right(upcominglist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }

  @override
  Future<Either<MainFailures, List<MovieModel>>> getnowplaying(
      {required int page}) async {
    try {
      var response =
          await Dio().get(nowplaying, queryParameters: {"page": page});
      if (response.statusCode == 200 || response.statusCode == 201) {
        if (page == 1) {
          nowplayinglist = (response.data['results'] as List).map((e) {
            return MovieModel.fromJson(e);
          }).toList();
        } else {
          nowplayinglist.addAll((response.data['results'] as List).map((e) {
            return MovieModel.fromJson(e);
          }).toList());
        }

        return Right(nowplayinglist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }

  @override
  Future<Either<MainFailures, List<MovieModel>>> gettoprated(
      {required int page}) async {
    try {
      var response = await Dio().get(toprated, queryParameters: {"page": page});
      if (response.statusCode == 200 || response.statusCode == 201) {
        if (page == 1) {
          topratedlist = (response.data['results'] as List).map((e) {
            return MovieModel.fromJson(e);
          }).toList();
        } else {
          topratedlist.addAll((response.data['results'] as List).map((e) {
            return MovieModel.fromJson(e);
          }).toList());
        }

        return Right(topratedlist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }
}
