import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/api_key.dart';
import 'package:cinemapranthan/backend/callback/seasondetailrepo.dart';
import 'package:dartz/dartz.dart';
import 'package:cinemapranthan/backend/models/tvseasondetail/seasondetail.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../apicall/tvshow.dart';

@LazySingleton(as: SeasonDetailRepo)
class SeasondetailsRepository implements SeasonDetailRepo {
  @override
  Future<Either<MainFailures, List<SeasonDetailsModel>>> getseassondetails(
      {required String tvid, required String seasonno}) async {
    try {
      String url = "$tvdetailshead$tvid/season/$seasonno?api_key=$api";
      var response = await Dio().get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SeasonDetailsModel.fromJson(response.data);
        final List<SeasonDetailsModel> model = [];
        model.add(result);
        return Right(model);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }
}
