import 'package:cinemapranthan/backend/models/starcast/starcastmodel.dart';
import 'package:dartz/dartz.dart';

import '../Failures/mainfailure.dart';

abstract class StarCastRepo {
  Future<Either<MainFailures, List<CastandCrew>>> getcastcrew(
      {required movieid});
}
