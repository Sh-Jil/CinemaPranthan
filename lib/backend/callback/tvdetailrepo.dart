import 'package:cinemapranthan/backend/models/tvdetail/tvdetail.dart';
import 'package:dartz/dartz.dart';
import '../Failures/mainfailure.dart';

abstract class TvDetailRepo {
  Future<Either<MainFailures, List<TvDetailsModel>>> gettvdetails(
      {required tvid});
}
