// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../bloc/castcrew/cast_crew_bloc.dart' as _i18;
import '../../bloc/moviebloc/movie_bloc_bloc.dart' as _i7;
import '../../bloc/moviedetail/movie_detail_bloc.dart' as _i19;
import '../../bloc/searchmovie/search_movie_bloc.dart' as _i20;
import '../../bloc/searchtv/searchtv_bloc.dart' as _i12;
import '../../bloc/tvbloc/tvbloc_bloc.dart' as _i17;
import '../callback/moviedetailrepo.dart' as _i3;
import '../callback/movierepo.dart' as _i5;
import '../callback/searchmovierepo.dart' as _i8;
import '../callback/searchtvrepo.dart' as _i10;
import '../callback/starcast.dart' as _i13;
import '../callback/tvrepo.dart' as _i15;
import '../repo/castcrewrepository.dart' as _i14;
import '../repo/movierepository.dart' as _i6;
import '../repo/mvdetailsrepository.dart' as _i4;
import '../repo/searchmovierepository.dart' as _i9;
import '../repo/searchtvrepository.dart' as _i11;
import '../repo/tvrepository.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.MovieDetailRepo>(() => _i4.MovieDetailRepository());
  gh.lazySingleton<_i5.MovieRepo>(() => _i6.MovieRepository());
  gh.factory<_i7.NowplayingMovieBloc>(
      () => _i7.NowplayingMovieBloc(get<_i5.MovieRepo>()));
  gh.factory<_i7.PopularMovieBloc>(
      () => _i7.PopularMovieBloc(get<_i5.MovieRepo>()));
  gh.lazySingleton<_i8.SearchMovieRepo>(() => _i9.SearchMovieRepository());
  gh.lazySingleton<_i10.SearchTvRepo>(() => _i11.SearchTvRepository());
  gh.factory<_i12.SearchtvBloc>(
      () => _i12.SearchtvBloc(get<_i10.SearchTvRepo>()));
  gh.lazySingleton<_i13.StarCastRepo>(() => _i14.CastCrewRepository());
  gh.factory<_i7.TopRatedmovieBloc>(
      () => _i7.TopRatedmovieBloc(get<_i5.MovieRepo>()));
  gh.lazySingleton<_i15.TvRepo>(() => _i16.TvRepository());
  gh.factory<_i17.TvblocBloc>(() => _i17.TvblocBloc(get<_i15.TvRepo>()));
  gh.factory<_i7.UpcomingMovieBloc>(
      () => _i7.UpcomingMovieBloc(get<_i5.MovieRepo>()));
  gh.factory<_i17.AiringTodayBloc>(
      () => _i17.AiringTodayBloc(get<_i15.TvRepo>()));
  gh.factory<_i18.CastCrewBloc>(
      () => _i18.CastCrewBloc(get<_i13.StarCastRepo>()));
  gh.factory<_i7.MovieBlocBloc>(() => _i7.MovieBlocBloc(get<_i5.MovieRepo>()));
  gh.factory<_i19.MovieDetailBloc>(
      () => _i19.MovieDetailBloc(get<_i3.MovieDetailRepo>()));
  gh.factory<_i17.OnTVBloc>(() => _i17.OnTVBloc(get<_i15.TvRepo>()));
  gh.factory<_i17.PopulartvBloc>(() => _i17.PopulartvBloc(get<_i15.TvRepo>()));
  gh.factory<_i20.SearchMovieBloc>(
      () => _i20.SearchMovieBloc(get<_i8.SearchMovieRepo>()));
  gh.factory<_i17.TopratedTvBloc>(
      () => _i17.TopratedTvBloc(get<_i15.TvRepo>()));
  return get;
}
