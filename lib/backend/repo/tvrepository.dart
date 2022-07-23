import 'package:cinemapranthan/backend/apicall/tvshow.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../Failures/mainfailure.dart';
import '../callback/tvrepo.dart';
import '../models/tvshows/tvmodel.dart';

@LazySingleton(as: TvRepo)
class TvRepository implements TvRepo {
  @override
  Future<Either<MainFailures, List<TvModel>>> getlatesttv() async {
    try {
      var response = await Dio().get(latesttv);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<TvModel> latesttvlist =
            (response.data['results'] as List).map((e) {
          return TvModel.fromJson(e);
        }).toList();
        return Right(latesttvlist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }

  @override
  Future<Either<MainFailures, List<TvModel>>> getpopulartv() async {
    try {
      var response = await Dio().get(populartv);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<TvModel> populartvlist =
            (response.data['results'] as List).map((e) {
          return TvModel.fromJson(e);
        }).toList();
        return Right(populartvlist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }

  @override
  Future<Either<MainFailures, List<TvModel>>> getairingtoday() async {
    try {
      var response = await Dio().get(airingtoday);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<TvModel> airingtodaylist =
            (response.data['results'] as List).map((e) {
          return TvModel.fromJson(e);
        }).toList();
        return Right(airingtodaylist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }

  @override
  Future<Either<MainFailures, List<TvModel>>> getontv() async {
    try {
      var response = await Dio().get(ontv);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<TvModel> ontvlist =
            (response.data['results'] as List).map((e) {
          return TvModel.fromJson(e);
        }).toList();
        return Right(ontvlist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }

  @override
  Future<Either<MainFailures, List<TvModel>>> gettopratedtv() async {
    try {
      var response = await Dio().get(topratedtv);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<TvModel> topratedtvlist =
            (response.data['results'] as List).map((e) {
          return TvModel.fromJson(e);
        }).toList();
        return Right(topratedtvlist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }
}
