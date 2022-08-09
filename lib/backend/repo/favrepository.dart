import 'package:cinemapranthan/backend/db/dboperations.dart';
import 'package:dartz/dartz.dart';
import 'package:cinemapranthan/backend/models/favourites/favmodel.dart';
import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:injectable/injectable.dart';
import '../callback/favouritesrepo.dart';

@LazySingleton(as: FavouriteRepo)
class FavouriteRepository implements FavouriteRepo {
  @override
  Future<Either<MainFailures, List<Favourites>>> getfav() async {
    final uid = DatabaseService().user!.uid;

    final List<Favourites> data = await DatabaseService()
        .collection
        .doc(uid)
        .collection("favourites")
        .get()
        .then((value) =>
            value.docs.map((e) => Favourites.fromJson(e.data())).toList());

    return right(data);
  }
}
