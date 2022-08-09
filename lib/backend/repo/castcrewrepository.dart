

import 'package:cinemapranthan/backend/apicall/movies.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../Failures/mainfailure.dart';
import '../callback/starcast.dart';
import '../models/starcast/starcastmodel.dart';

@LazySingleton(as: StarCastRepo)
class CastCrewRepository implements StarCastRepo {
  @override
  Future<Either<MainFailures, List<CastandCrew>>> getcastcrew(
      {required movieid}) async {
    try {
      String url = "$moviedetail$movieid$moviecreditend";
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
