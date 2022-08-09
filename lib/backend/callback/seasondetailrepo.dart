import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/models/tvseasondetail/seasondetail.dart';
import 'package:dartz/dartz.dart';

abstract class SeasonDetailRepo {
  Future<Either<MainFailures, List<SeasonDetailsModel>>> getseassondetails(
      {required String tvid, required String seasonno});
}
