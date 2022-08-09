import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/models/favourites/favmodel.dart';
import 'package:dartz/dartz.dart';

abstract class FavouriteRepo {
  Future<Either<MainFailures, List<Favourites>>> getfav();
}
