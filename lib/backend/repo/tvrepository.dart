import 'package:cinemapranthan/backend/apicall/tvshow.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../Failures/mainfailure.dart';
import '../callback/tvrepo.dart';
import '../models/tvshows/tvmodel.dart';

@LazySingleton(as: TvRepo)
class TvRepository implements TvRepo {


  List<TvModel> populartvlist = [];
  List<TvModel> airingtodaylist = [];
  List<TvModel> ontvlist = [];
  List<TvModel> topratedtvlist = [];


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

  Future<Either<MainFailures, List<TvModel>>> getpopulartv(
      {required int page}) async {
    try {
      var response =
          await Dio().get(populartv, queryParameters: {"page": page});
      if (response.statusCode == 200 || response.statusCode == 201) {
        if (page == 1) {
          populartvlist = (response.data['results'] as List).map((e) {
            return TvModel.fromJson(e);
          }).toList();
        } else {
          populartvlist.addAll((response.data['results'] as List).map((e) {
            return TvModel.fromJson(e);
          }).toList());
        }

        return Right(populartvlist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }

  @override

  Future<Either<MainFailures, List<TvModel>>> getairingtoday(
      {required int page}) async {
    try {
      var response =
          await Dio().get(airingtoday, queryParameters: {"page": page});
      if (response.statusCode == 200 || response.statusCode == 201) {
        if (page == 1) {
          airingtodaylist = (response.data['results'] as List).map((e) {
            return TvModel.fromJson(e);
          }).toList();
        } else {
          airingtodaylist.addAll((response.data['results'] as List).map((e) {
            return TvModel.fromJson(e);
          }).toList());
        }

        return Right(airingtodaylist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }

  @override
  Future<Either<MainFailures, List<TvModel>>> getontv(
      {required int page}) async {
    try {
      var response = await Dio().get(ontv, queryParameters: {"page": page});
      if (response.statusCode == 200 || response.statusCode == 201) {
        if (page == 1) {
          ontvlist = (response.data['results'] as List).map((e) {
            return TvModel.fromJson(e);
          }).toList();
        } else {
          ontvlist.addAll((response.data['results'] as List).map((e) {
            return TvModel.fromJson(e);
          }).toList());
        }

        return Right(ontvlist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }

  @override

  Future<Either<MainFailures, List<TvModel>>> gettopratedtv(
      {required int page}) async {
    try {
      var response =
          await Dio().get(topratedtv, queryParameters: {"page": page});
      if (response.statusCode == 200 || response.statusCode == 201) {
        if (page == 1) {
          topratedtvlist = (response.data['results'] as List).map((e) {
            return TvModel.fromJson(e);
          }).toList();
        } else {
          topratedtvlist.addAll((response.data['results'] as List).map((e) {
            return TvModel.fromJson(e);
          }).toList());
        }


        return Right(topratedtvlist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }
}
