import 'package:dartz/dartz.dart';

import 'package:cinemapranthan/backend/models/relatedtv/tv_related_model.dart';

import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../api_key.dart';
import '../apicall/tvshow.dart';
import '../callback/movierelated.dart';

@LazySingleton(as: RelatedTvRepo)
class TvRelatedRepo implements RelatedTvRepo {
  List<TvRelatedModel> recommendedlist = [];
  List<Result> tvshows = [];

  @override
  Future<Either<MainFailures, List<TvRelatedModel>>> getrecommended(
      {required int tvid, required int page}) async {
    try {
      final url = "$tvdetailshead$tvid/recommendations?api_key=$api";
      var response = await Dio().get(url, queryParameters: {"page": page});
      if (response.statusCode == 200 || response.statusCode == 201) {
        final int totalpages = response.data['total_pages'];
        if (page == 1) {
          tvshows = (response.data['results'] as List).map((e) {
            return Result.fromJson(e);
          }).toList();
        } else {
          tvshows.addAll((response.data['results'] as List).map((e) {
            return Result.fromJson(e);
          }).toList());
        }
        recommendedlist = [
          TvRelatedModel(results: tvshows, totalPages: totalpages)
        ];

        return Right(recommendedlist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }
}
