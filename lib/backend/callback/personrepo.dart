import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:dartz/dartz.dart';
import '../models/personcredits/personcredits.dart';
import '../models/personprofile/personprofile.dart';

abstract class PersonRepo {
  Future<Either<MainFailures, List<PersonDetail>>> getpersondetail(
      {required String personid});
}

abstract class PersonCreditRepo {
  Future<Either<MainFailures, List<PersonCredit>>> getpersoncredit(
      {required String personid});
}

abstract class PersonImageRepo {
  Future<Either<MainFailures, List<PersonImage>>> getpersonimage(
      {required String personid});
}
