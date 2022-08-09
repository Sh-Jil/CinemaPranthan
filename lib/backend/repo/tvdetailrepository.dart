import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/apicall/tvshow.dart';
import 'package:cinemapranthan/backend/callback/tvdetailrepo.dart';
import 'package:dartz/dartz.dart';
import 'package:cinemapranthan/backend/models/tvdetail/tvdetail.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../api_key.dart';

@LazySingleton(as: TvDetailRepo)
class TvDetailRepository implements TvDetailRepo {
  @override
  Future<Either<MainFailures, List<TvDetailsModel>>> gettvdetails(
      {required tvid}) async {
    try {
      var url = "$tvdetailshead$tvid?api_key=$api";
      var response = await Dio().get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        List<TvDetailsModel> tvdetaillist = [];
        final parsed = TvDetailsModel.fromJson(response.data);
        tvdetaillist.add(parsed);
        return Right(tvdetaillist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }
}
