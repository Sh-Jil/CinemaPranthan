import 'package:cinemapranthan/backend/models/tvshows/tvmodel.dart';
import 'package:dartz/dartz.dart';

import '../Failures/mainfailure.dart';

abstract class SearchTvRepo {
  Future<Either<MainFailures, List<TvModel>>> searchtv(

      {required String tvquery, required int page});

}
