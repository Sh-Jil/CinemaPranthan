import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/api_key.dart';
import 'package:cinemapranthan/backend/apicall/movies.dart';
import 'package:cinemapranthan/backend/callback/posterimagesrepo.dart';
import 'package:dartz/dartz.dart';
import 'package:cinemapranthan/backend/models/images/posterimages.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../apicall/tvshow.dart';

@LazySingleton(as: PosterImagesRepo)
class PosterImagesRepository implements PosterImagesRepo {
  @override
  Future<Either<MainFailures, List<PosterModel>>> getmovieimages(
      {required int movieid}) async {
    try {
      final String url = '$moviehead$movieid/images';
      var response = await Dio(BaseOptions(
              validateStatus: (status) => true,
              contentType: Headers.jsonContentType,
              responseType: ResponseType.json))
          .get(
        url,
        queryParameters: {'api_key': api.toString()},
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<PosterModel> posterimages =
            (response.data['posters'] as List).map((e) {
          return PosterModel.fromJson(e);
        }).toList();
        return Right(posterimages);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }

  @override
  Future<Either<MainFailures, List<PosterModel>>> gettvimages(
      {required int tvid}) async {
    try {
      final String url = '$tvdetailshead$tvid/images';
      var response = await Dio(BaseOptions(
              validateStatus: (status) => true,
              contentType: Headers.jsonContentType,
              responseType: ResponseType.json))
          .get(
        url,
        queryParameters: {'api_key': api.toString()},
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<PosterModel> posterimages =
            (response.data['posters'] as List).map((e) {
          return PosterModel.fromJson(e);
        }).toList();
        return Right(posterimages);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }
}
