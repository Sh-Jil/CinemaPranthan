import 'dart:developer';

import 'package:cinemapranthan/backend/apicall/movies.dart';
import 'package:dartz/dartz.dart';

import 'package:cinemapranthan/backend/models/collection/collection.dart';

import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../api_key.dart';
import '../callback/collectionrepo.dart';

@LazySingleton(as: CollectionRepo)
class CollectionRepository implements CollectionRepo {
  @override
  Future<Either<MainFailures, CollectionModel>> getMovieSeries(
      {required int collectionId}) async {
    try {
      var url = "$moviecollectionhead$collectionId$apiparam";
      var response = await Dio().get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final parsed = CollectionModel.fromJson(response.data);
        return Right(parsed);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return left(const MainFailures.clientFailure());
    }
  }
}
