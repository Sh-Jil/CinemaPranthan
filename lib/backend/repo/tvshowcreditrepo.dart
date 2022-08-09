import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/callback/tvshowcredit.dart';
import 'package:dartz/dartz.dart';
import 'package:cinemapranthan/backend/models/starcast/starcastmodel.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../apicall/tvshow.dart';

@LazySingleton(as: TvShowCredit)
class TvShowCreditRepository implements TvShowCredit {
  @override
  Future<Either<MainFailures, List<CastandCrew>>> gettvshowcredit(
      {required String tvid}) async {
    try {
      String url = "$tvdetailshead$tvid$tvcreditend";
      var response = await Dio().get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<CastandCrew> creditlist;
        final List<Cast> castlist = (response.data['cast'] as List).map((e) {
          return Cast.fromJson(e);
        }).toList();
        final List<Crew> crewlist = (response.data['crew'] as List).map((e) {
          return Crew.fromJson(e);
        }).toList();
        creditlist = [CastandCrew(cast: castlist, crew: crewlist)];
        return Right(creditlist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }
}
