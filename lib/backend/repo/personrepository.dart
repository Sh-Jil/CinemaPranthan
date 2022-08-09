import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/callback/personrepo.dart';
import 'package:cinemapranthan/backend/models/personcredits/personcredits.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../api_key.dart';
import '../apicall/movies.dart';
import '../models/personprofile/personprofile.dart';

@LazySingleton(as: PersonRepo)
class PersonRepository implements PersonRepo {
  @override
  Future<Either<MainFailures, List<PersonDetail>>> getpersondetail(
      {required String personid}) async {
    try {
      var url = "$personhead$personid?api_key=$api";
      var response = await Dio().get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        List<PersonDetail> persondetaillist = [];
        final parsed = PersonDetail.fromJson(response.data);
        persondetaillist.add(parsed);
        return Right(persondetaillist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }
}

@LazySingleton(as: PersonCreditRepo)
class PersonCreditRepository implements PersonCreditRepo {
  @override
  Future<Either<MainFailures, List<PersonCredit>>> getpersoncredit(
      {required String personid}) async {
    try {
      String url = "$personhead$personid/combined_credits?api_key=$api";
      var response = await Dio().get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<PersonCredit> creditlist;
        final List<Cast> castlist = (response.data['cast'] as List).map((e) {
          return Cast.fromJson(e);
        }).toList();
        final List<Crew> crewlist = (response.data['crew'] as List).map((e) {
          return Crew.fromJson(e);
        }).toList();
        creditlist = [PersonCredit(cast: castlist, crew: crewlist)];
        return Right(creditlist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }
}

@LazySingleton(as: PersonImageRepo)
class PersonImageRepository implements PersonImageRepo {
  @override
  Future<Either<MainFailures, List<PersonImage>>> getpersonimage(
      {required String personid}) async {
    try {
      String url = "$personhead$personid/images?api_key=$api";
      var response = await Dio().get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<PersonImage> creditlist =
            (response.data['profiles'] as List).map((e) {
          return PersonImage.fromJson(e);
        }).toList();
        return Right(creditlist);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      return left(const MainFailures.clientFailure());
    }
  }
}
