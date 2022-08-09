// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../bloc/auth/auth_bloc.dart' as _i38;
import '../../bloc/castcrew/cast_crew_bloc.dart' as _i24;
import '../../bloc/favourites/favourite_bloc.dart' as _i39;
import '../../bloc/moviebloc/movie_bloc_bloc.dart' as _i11;
import '../../bloc/moviedetail/movie_detail_bloc.dart' as _i40;
import '../../bloc/persondetail/person_detail_bloc.dart' as _i41;
import '../../bloc/relatedmovies/related_movies_bloc.dart' as _i42;
import '../../bloc/searchmovie/search_movie_bloc.dart' as _i43;
import '../../bloc/searchtv/searchtv_bloc.dart' as _i21;
import '../../bloc/tvbloc/tvbloc_bloc.dart' as _i37;
import '../../bloc/tvdetail/tv_detail_bloc.dart' as _i44;
import '../../bloc/tvrelated/tv_related_bloc.dart' as _i31;
import '../../bloc/tvseasondetail/tv_season_detail_bloc.dart' as _i34;
import '../auth/auth.dart' as _i4;
import '../auth/authrepo.dart' as _i3;
import '../callback/favouritesrepo.dart' as _i5;
import '../callback/moviedetailrepo.dart' as _i7;
import '../callback/movierelated.dart' as _i14;
import '../callback/movierepo.dart' as _i9;
import '../callback/personrepo.dart' as _i12;
import '../callback/searchmovierepo.dart' as _i17;
import '../callback/searchtvrepo.dart' as _i19;
import '../callback/seasoncredits.dart' as _i22;
import '../callback/seasondetailrepo.dart' as _i25;
import '../callback/starcast.dart' as _i27;
import '../callback/tvdetailrepo.dart' as _i29;
import '../callback/tvrepo.dart' as _i32;
import '../callback/tvshowcredit.dart' as _i35;
import '../repo/castcrewrepository.dart' as _i28;
import '../repo/favrepository.dart' as _i6;
import '../repo/movierelated.dart' as _i15;
import '../repo/movierepository.dart' as _i10;
import '../repo/mvdetailsrepository.dart' as _i8;
import '../repo/personrepository.dart' as _i13;
import '../repo/relatedtvrepo.dart' as _i16;
import '../repo/searchmovierepository.dart' as _i18;
import '../repo/searchtvrepository.dart' as _i20;
import '../repo/seasoncreditrepository.dart' as _i23;
import '../repo/seasondetailsrepository.dart' as _i26;
import '../repo/tvdetailrepository.dart' as _i30;
import '../repo/tvrepository.dart' as _i33;
import '../repo/tvshowcreditrepo.dart'
    as _i36; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AuthRepo>(() => _i4.AuthRepository());
  gh.lazySingleton<_i5.FavouriteRepo>(() => _i6.FavouriteRepository());
  gh.lazySingleton<_i7.MovieDetailRepo>(() => _i8.MovieDetailRepository());
  gh.lazySingleton<_i9.MovieRepo>(() => _i10.MovieRepository());
  gh.factory<_i11.NowplayingMovieBloc>(
      () => _i11.NowplayingMovieBloc(get<_i9.MovieRepo>()));
  gh.lazySingleton<_i12.PersonCreditRepo>(() => _i13.PersonCreditRepository());
  gh.lazySingleton<_i12.PersonImageRepo>(() => _i13.PersonImageRepository());
  gh.lazySingleton<_i12.PersonRepo>(() => _i13.PersonRepository());
  gh.factory<_i11.PopularMovieBloc>(
      () => _i11.PopularMovieBloc(get<_i9.MovieRepo>()));
  gh.lazySingleton<_i14.RelatedMoviesRepo>(() => _i15.RelatedMovieRepository());
  gh.lazySingleton<_i14.RelatedTvRepo>(() => _i16.TvRelatedRepo());
  gh.lazySingleton<_i17.SearchMovieRepo>(() => _i18.SearchMovieRepository());
  gh.lazySingleton<_i19.SearchTvRepo>(() => _i20.SearchTvRepository());
  gh.factory<_i21.SearchtvBloc>(
      () => _i21.SearchtvBloc(get<_i19.SearchTvRepo>()));
  gh.lazySingleton<_i22.SeasonCreditRepo>(() => _i23.SeasonCreditRepository());
  gh.factory<_i24.SeasonCreditsBloc>(
      () => _i24.SeasonCreditsBloc(get<_i22.SeasonCreditRepo>()));
  gh.lazySingleton<_i25.SeasonDetailRepo>(() => _i26.SeasondetailsRepository());
  gh.lazySingleton<_i27.StarCastRepo>(() => _i28.CastCrewRepository());
  gh.factory<_i11.TopRatedmovieBloc>(
      () => _i11.TopRatedmovieBloc(get<_i9.MovieRepo>()));
  gh.lazySingleton<_i29.TvDetailRepo>(() => _i30.TvDetailRepository());
  gh.factory<_i31.TvRelatedBloc>(
      () => _i31.TvRelatedBloc(get<_i14.RelatedTvRepo>()));
  gh.lazySingleton<_i32.TvRepo>(() => _i33.TvRepository());
  gh.factory<_i34.TvSeasonDetailBloc>(
      () => _i34.TvSeasonDetailBloc(get<_i25.SeasonDetailRepo>()));
  gh.lazySingleton<_i35.TvShowCredit>(() => _i36.TvShowCreditRepository());
  gh.factory<_i24.TvShowCreditBloc>(
      () => _i24.TvShowCreditBloc(get<_i35.TvShowCredit>()));
  gh.factory<_i37.TvblocBloc>(() => _i37.TvblocBloc(get<_i32.TvRepo>()));
  gh.factory<_i11.UpcomingMovieBloc>(
      () => _i11.UpcomingMovieBloc(get<_i9.MovieRepo>()));
  gh.factory<_i37.AiringTodayBloc>(
      () => _i37.AiringTodayBloc(get<_i32.TvRepo>()));
  gh.factory<_i38.AuthBloc>(() => _i38.AuthBloc(get<_i3.AuthRepo>()));
  gh.factory<_i24.CastCrewBloc>(
      () => _i24.CastCrewBloc(get<_i27.StarCastRepo>()));
  gh.factory<_i39.FavouriteBloc>(
      () => _i39.FavouriteBloc(get<_i5.FavouriteRepo>()));
  gh.factory<_i11.MovieBlocBloc>(
      () => _i11.MovieBlocBloc(get<_i9.MovieRepo>()));
  gh.factory<_i40.MovieDetailBloc>(
      () => _i40.MovieDetailBloc(get<_i7.MovieDetailRepo>()));
  gh.factory<_i37.OnTVBloc>(() => _i37.OnTVBloc(get<_i32.TvRepo>()));
  gh.factory<_i41.PersonCreditBloc>(
      () => _i41.PersonCreditBloc(get<_i12.PersonCreditRepo>()));
  gh.factory<_i41.PersonDetailBloc>(
      () => _i41.PersonDetailBloc(get<_i12.PersonRepo>()));
  gh.factory<_i41.PersonImageBloc>(
      () => _i41.PersonImageBloc(get<_i12.PersonImageRepo>()));
  gh.factory<_i37.PopulartvBloc>(() => _i37.PopulartvBloc(get<_i32.TvRepo>()));
  gh.factory<_i42.RelatedMoviesBloc>(
      () => _i42.RelatedMoviesBloc(get<_i14.RelatedMoviesRepo>()));
  gh.factory<_i43.SearchMovieBloc>(
      () => _i43.SearchMovieBloc(get<_i17.SearchMovieRepo>()));
  gh.factory<_i37.TopratedTvBloc>(
      () => _i37.TopratedTvBloc(get<_i32.TvRepo>()));
  gh.factory<_i44.TvDetailBloc>(
      () => _i44.TvDetailBloc(get<_i29.TvDetailRepo>()));
  return get;
}
