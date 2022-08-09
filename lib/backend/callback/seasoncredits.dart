import 'package:cinemapranthan/backend/models/starcast/starcastmodel.dart';
import 'package:dartz/dartz.dart';

import '../Failures/mainfailure.dart';

abstract class SeasonCreditRepo {
  Future<Either<MainFailures, List<CastandCrew>>> getcastandcrew(
      {required String tvid, required String seasonno});
}
