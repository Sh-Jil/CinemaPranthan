import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/apicall/tvshow.dart';
import 'package:cinemapranthan/backend/callback/searchtvrepo.dart';
import 'package:dartz/dartz.dart';
import 'package:cinemapranthan/backend/models/tvshows/tvmodel.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SearchTvRepo)
class SearchTvRepository implements SearchTvRepo {

  List<TvModel> searchtvlist = [];
  @override
  Future<Either<MainFailures, List<TvModel>>> searchtv(
      {required String tvquery, required int page}) async {
    try {
      var response = await Dio()
          .get(searchtvurl, queryParameters: {'query': tvquery, 'page': page});
      if (response.statusCode == 200 || response.statusCode == 201) {
        if (page == 1) {
          searchtvlist = (response.data['results'] as List).map((e) {
            return TvModel.fromJson(e);
          }).toList();
        } else {
          searchtvlist.addAll((response.data['results'] as List).map((e) {
            return TvModel.fromJson(e);
          }).toList());
        }

        return Right(searchtvlist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }
}
