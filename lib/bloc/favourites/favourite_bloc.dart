import 'package:bloc/bloc.dart';
import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/callback/favouritesrepo.dart';
import 'package:cinemapranthan/backend/db/dboperations.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../backend/models/favourites/favmodel.dart';

part 'favourite_event.dart';
part 'favourite_state.dart';
part 'favourite_bloc.freezed.dart';

@injectable
class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  final FavouriteRepo favrepo;
  FavouriteBloc(this.favrepo) : super(FavouriteState.initial()) {
    on<_Started>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final Either<MainFailures, List<Favourites>> data =
          await favrepo.getfav();
      emit(data.fold((l) => state.copyWith(isLoading: false),
          (r) => state.copyWith(isLoading: false, favlist: r)));
    });
    on<_Remove>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      DatabaseService().removefromFav(event.ismovie, event.id);
      final Either<MainFailures, List<Favourites>> data =
          await favrepo.getfav();
      emit(data.fold((l) => state.copyWith(isLoading: false),
          (r) => state.copyWith(isLoading: false, favlist: r)));
    });
  }
}
