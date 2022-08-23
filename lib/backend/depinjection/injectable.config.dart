// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../bloc/auth/auth_bloc.dart' as _i41;
import '../../bloc/castcrew/cast_crew_bloc.dart' as _i26;
import '../../bloc/favourites/favourite_bloc.dart' as _i42;
import '../../bloc/Images/poster_images_bloc.dart' as _i33;
import '../../bloc/moviebloc/movie_bloc_bloc.dart' as _i11;
import '../../bloc/moviedetail/movie_detail_bloc.dart' as _i43;
import '../../bloc/persondetail/person_detail_bloc.dart' as _i44;
import '../../bloc/relatedmovies/related_movies_bloc.dart' as _i45;
import '../../bloc/searchmovie/search_movie_bloc.dart' as _i46;
import '../../bloc/searchtv/searchtv_bloc.dart' as _i23;
import '../../bloc/tvbloc/tvbloc_bloc.dart' as _i40;
import '../../bloc/tvdetail/tv_detail_bloc.dart' as _i47;
import '../../bloc/tvrelated/tv_related_bloc.dart' as _i34;
import '../../bloc/tvseasondetail/tv_season_detail_bloc.dart' as _i37;
import '../auth/auth.dart' as _i4;
import '../auth/authrepo.dart' as _i3;
import '../callback/favouritesrepo.dart' as _i5;
import '../callback/moviedetailrepo.dart' as _i7;
import '../callback/movierelated.dart' as _i16;
import '../callback/movierepo.dart' as _i9;
import '../callback/personrepo.dart' as _i12;
import '../callback/posterimagesrepo.dart' as _i14;
import '../callback/searchmovierepo.dart' as _i19;
import '../callback/searchtvrepo.dart' as _i21;
import '../callback/seasoncredits.dart' as _i24;
import '../callback/seasondetailrepo.dart' as _i27;
import '../callback/starcast.dart' as _i29;
import '../callback/tvdetailrepo.dart' as _i31;
import '../callback/tvrepo.dart' as _i35;
import '../callback/tvshowcredit.dart' as _i38;
import '../repo/castcrewrepository.dart' as _i30;
import '../repo/favrepository.dart' as _i6;
import '../repo/movierelated.dart' as _i17;
import '../repo/movierepository.dart' as _i10;
import '../repo/mvdetailsrepository.dart' as _i8;
import '../repo/personrepository.dart' as _i13;
import '../repo/posterimages.dart' as _i15;
import '../repo/relatedtvrepo.dart' as _i18;
import '../repo/searchmovierepository.dart' as _i20;
import '../repo/searchtvrepository.dart' as _i22;
import '../repo/seasoncreditrepository.dart' as _i25;
import '../repo/seasondetailsrepository.dart' as _i28;
import '../repo/tvdetailrepository.dart' as _i32;
import '../repo/tvrepository.dart' as _i36;
import '../repo/tvshowcreditrepo.dart'
    as _i39; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i14.PosterImagesRepo>(() => _i15.PosterImagesRepository());
  gh.lazySingleton<_i16.RelatedMoviesRepo>(() => _i17.RelatedMovieRepository());
  gh.lazySingleton<_i16.RelatedTvRepo>(() => _i18.TvRelatedRepo());
  gh.lazySingleton<_i19.SearchMovieRepo>(() => _i20.SearchMovieRepository());
  gh.lazySingleton<_i21.SearchTvRepo>(() => _i22.SearchTvRepository());
  gh.factory<_i23.SearchtvBloc>(
      () => _i23.SearchtvBloc(get<_i21.SearchTvRepo>()));
  gh.lazySingleton<_i24.SeasonCreditRepo>(() => _i25.SeasonCreditRepository());
  gh.factory<_i26.SeasonCreditsBloc>(
      () => _i26.SeasonCreditsBloc(get<_i24.SeasonCreditRepo>()));
  gh.lazySingleton<_i27.SeasonDetailRepo>(() => _i28.SeasondetailsRepository());
  gh.lazySingleton<_i29.StarCastRepo>(() => _i30.CastCrewRepository());
  gh.factory<_i11.TopRatedmovieBloc>(
      () => _i11.TopRatedmovieBloc(get<_i9.MovieRepo>()));
  gh.lazySingleton<_i31.TvDetailRepo>(() => _i32.TvDetailRepository());
  gh.factory<_i33.TvPosterImageBloc>(
      () => _i33.TvPosterImageBloc(get<_i14.PosterImagesRepo>()));
  gh.factory<_i34.TvRelatedBloc>(
      () => _i34.TvRelatedBloc(get<_i16.RelatedTvRepo>()));
  gh.lazySingleton<_i35.TvRepo>(() => _i36.TvRepository());
  gh.factory<_i37.TvSeasonDetailBloc>(
      () => _i37.TvSeasonDetailBloc(get<_i27.SeasonDetailRepo>()));
  gh.lazySingleton<_i38.TvShowCredit>(() => _i39.TvShowCreditRepository());
  gh.factory<_i26.TvShowCreditBloc>(
      () => _i26.TvShowCreditBloc(get<_i38.TvShowCredit>()));
  gh.factory<_i40.TvblocBloc>(() => _i40.TvblocBloc(get<_i35.TvRepo>()));
  gh.factory<_i11.UpcomingMovieBloc>(
      () => _i11.UpcomingMovieBloc(get<_i9.MovieRepo>()));
  gh.factory<_i40.AiringTodayBloc>(
      () => _i40.AiringTodayBloc(get<_i35.TvRepo>()));
  gh.factory<_i41.AuthBloc>(() => _i41.AuthBloc(get<_i3.AuthRepo>()));
  gh.factory<_i26.CastCrewBloc>(
      () => _i26.CastCrewBloc(get<_i29.StarCastRepo>()));
  gh.factory<_i42.FavouriteBloc>(
      () => _i42.FavouriteBloc(get<_i5.FavouriteRepo>()));
  gh.factory<_i11.MovieBlocBloc>(
      () => _i11.MovieBlocBloc(get<_i9.MovieRepo>()));
  gh.factory<_i43.MovieDetailBloc>(
      () => _i43.MovieDetailBloc(get<_i7.MovieDetailRepo>()));
  gh.factory<_i40.OnTVBloc>(() => _i40.OnTVBloc(get<_i35.TvRepo>()));
  gh.factory<_i44.PersonCreditBloc>(
      () => _i44.PersonCreditBloc(get<_i12.PersonCreditRepo>()));
  gh.factory<_i44.PersonDetailBloc>(
      () => _i44.PersonDetailBloc(get<_i12.PersonRepo>()));
  gh.factory<_i44.PersonImageBloc>(
      () => _i44.PersonImageBloc(get<_i12.PersonImageRepo>()));
  gh.factory<_i40.PopulartvBloc>(() => _i40.PopulartvBloc(get<_i35.TvRepo>()));
  gh.factory<_i33.PosterImagesBloc>(
      () => _i33.PosterImagesBloc(get<_i14.PosterImagesRepo>()));
  gh.factory<_i45.RelatedMoviesBloc>(
      () => _i45.RelatedMoviesBloc(get<_i16.RelatedMoviesRepo>()));
  gh.factory<_i46.SearchMovieBloc>(
      () => _i46.SearchMovieBloc(get<_i19.SearchMovieRepo>()));
  gh.factory<_i40.TopratedTvBloc>(
      () => _i40.TopratedTvBloc(get<_i35.TvRepo>()));
  gh.factory<_i47.TvDetailBloc>(
      () => _i47.TvDetailBloc(get<_i31.TvDetailRepo>()));
  return get;
}
