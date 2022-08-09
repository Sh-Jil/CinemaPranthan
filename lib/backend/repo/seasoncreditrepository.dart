import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/callback/seasoncredits.dart';
import 'package:dartz/dartz.dart';
import 'package:cinemapranthan/backend/models/starcast/starcastmodel.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../api_key.dart';
import '../apicall/tvshow.dart';

@LazySingleton(as: SeasonCreditRepo)
class SeasonCreditRepository implements SeasonCreditRepo {
  @override
  Future<Either<MainFailures, List<CastandCrew>>> getcastandcrew(
      {required String tvid, required String seasonno}) async {
    try {
      String url = "$tvdetailshead$tvid/season/$seasonno/credits?api_key=$api";
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
