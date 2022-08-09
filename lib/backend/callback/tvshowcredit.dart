import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/models/starcast/starcastmodel.dart';
import 'package:dartz/dartz.dart';

abstract class TvShowCredit {
  Future<Either<MainFailures, List<CastandCrew>>> gettvshowcredit(
      {required String tvid});
}
