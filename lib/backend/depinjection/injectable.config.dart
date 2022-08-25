// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../bloc/auth/auth_bloc.dart' as _i43;
import '../../bloc/castcrew/cast_crew_bloc.dart' as _i28;
import '../../bloc/favourites/favourite_bloc.dart' as _i45;
import '../../bloc/Images/poster_images_bloc.dart' as _i35;
import '../../bloc/moviebloc/movie_bloc_bloc.dart' as _i13;
import '../../bloc/moviecollection/collection_bloc.dart' as _i44;
import '../../bloc/moviedetail/movie_detail_bloc.dart' as _i46;
import '../../bloc/persondetail/person_detail_bloc.dart' as _i47;
import '../../bloc/relatedmovies/related_movies_bloc.dart' as _i48;
import '../../bloc/searchmovie/search_movie_bloc.dart' as _i49;
import '../../bloc/searchtv/searchtv_bloc.dart' as _i25;
import '../../bloc/tvbloc/tvbloc_bloc.dart' as _i42;
import '../../bloc/tvdetail/tv_detail_bloc.dart' as _i50;
import '../../bloc/tvrelated/tv_related_bloc.dart' as _i36;
import '../../bloc/tvseasondetail/tv_season_detail_bloc.dart' as _i39;
import '../auth/auth.dart' as _i4;
import '../auth/authrepo.dart' as _i3;
import '../callback/collectionrepo.dart' as _i5;
import '../callback/favouritesrepo.dart' as _i7;
import '../callback/moviedetailrepo.dart' as _i9;
import '../callback/movierelated.dart' as _i18;
import '../callback/movierepo.dart' as _i11;
import '../callback/personrepo.dart' as _i14;
import '../callback/posterimagesrepo.dart' as _i16;
import '../callback/searchmovierepo.dart' as _i21;
import '../callback/searchtvrepo.dart' as _i23;
import '../callback/seasoncredits.dart' as _i26;
import '../callback/seasondetailrepo.dart' as _i29;
import '../callback/starcast.dart' as _i31;
import '../callback/tvdetailrepo.dart' as _i33;
import '../callback/tvrepo.dart' as _i37;
import '../callback/tvshowcredit.dart' as _i40;
import '../repo/castcrewrepository.dart' as _i32;
import '../repo/favrepository.dart' as _i8;
import '../repo/moviecollection.dart' as _i6;
import '../repo/movierelated.dart' as _i19;
import '../repo/movierepository.dart' as _i12;
import '../repo/mvdetailsrepository.dart' as _i10;
import '../repo/personrepository.dart' as _i15;
import '../repo/posterimages.dart' as _i17;
import '../repo/relatedtvrepo.dart' as _i20;
import '../repo/searchmovierepository.dart' as _i22;
import '../repo/searchtvrepository.dart' as _i24;
import '../repo/seasoncreditrepository.dart' as _i27;
import '../repo/seasondetailsrepository.dart' as _i30;
import '../repo/tvdetailrepository.dart' as _i34;
import '../repo/tvrepository.dart' as _i38;
import '../repo/tvshowcreditrepo.dart'
    as _i41; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AuthRepo>(() => _i4.AuthRepository());
  gh.lazySingleton<_i5.CollectionRepo>(() => _i6.CollectionRepository());
  gh.lazySingleton<_i7.FavouriteRepo>(() => _i8.FavouriteRepository());
  gh.lazySingleton<_i9.MovieDetailRepo>(() => _i10.MovieDetailRepository());
  gh.lazySingleton<_i11.MovieRepo>(() => _i12.MovieRepository());
  gh.factory<_i13.NowplayingMovieBloc>(
      () => _i13.NowplayingMovieBloc(get<_i11.MovieRepo>()));
  gh.lazySingleton<_i14.PersonCreditRepo>(() => _i15.PersonCreditRepository());
  gh.lazySingleton<_i14.PersonImageRepo>(() => _i15.PersonImageRepository());
  gh.lazySingleton<_i14.PersonRepo>(() => _i15.PersonRepository());
  gh.factory<_i13.PopularMovieBloc>(
      () => _i13.PopularMovieBloc(get<_i11.MovieRepo>()));
  gh.lazySingleton<_i16.PosterImagesRepo>(() => _i17.PosterImagesRepository());
  gh.lazySingleton<_i18.RelatedMoviesRepo>(() => _i19.RelatedMovieRepository());
  gh.lazySingleton<_i18.RelatedTvRepo>(() => _i20.TvRelatedRepo());
  gh.lazySingleton<_i21.SearchMovieRepo>(() => _i22.SearchMovieRepository());
  gh.lazySingleton<_i23.SearchTvRepo>(() => _i24.SearchTvRepository());
  gh.factory<_i25.SearchtvBloc>(
      () => _i25.SearchtvBloc(get<_i23.SearchTvRepo>()));
  gh.lazySingleton<_i26.SeasonCreditRepo>(() => _i27.SeasonCreditRepository());
  gh.factory<_i28.SeasonCreditsBloc>(
      () => _i28.SeasonCreditsBloc(get<_i26.SeasonCreditRepo>()));
  gh.lazySingleton<_i29.SeasonDetailRepo>(() => _i30.SeasondetailsRepository());
  gh.lazySingleton<_i31.StarCastRepo>(() => _i32.CastCrewRepository());
  gh.factory<_i13.TopRatedmovieBloc>(
      () => _i13.TopRatedmovieBloc(get<_i11.MovieRepo>()));
  gh.lazySingleton<_i33.TvDetailRepo>(() => _i34.TvDetailRepository());
  gh.factory<_i35.TvPosterImageBloc>(
      () => _i35.TvPosterImageBloc(get<_i16.PosterImagesRepo>()));
  gh.factory<_i36.TvRelatedBloc>(
      () => _i36.TvRelatedBloc(get<_i18.RelatedTvRepo>()));
  gh.lazySingleton<_i37.TvRepo>(() => _i38.TvRepository());
  gh.factory<_i39.TvSeasonDetailBloc>(
      () => _i39.TvSeasonDetailBloc(get<_i29.SeasonDetailRepo>()));
  gh.lazySingleton<_i40.TvShowCredit>(() => _i41.TvShowCreditRepository());
  gh.factory<_i28.TvShowCreditBloc>(
      () => _i28.TvShowCreditBloc(get<_i40.TvShowCredit>()));
  gh.factory<_i42.TvblocBloc>(() => _i42.TvblocBloc(get<_i37.TvRepo>()));
  gh.factory<_i13.UpcomingMovieBloc>(
      () => _i13.UpcomingMovieBloc(get<_i11.MovieRepo>()));
  gh.factory<_i42.AiringTodayBloc>(
      () => _i42.AiringTodayBloc(get<_i37.TvRepo>()));
  gh.factory<_i43.AuthBloc>(() => _i43.AuthBloc(get<_i3.AuthRepo>()));
  gh.factory<_i28.CastCrewBloc>(
      () => _i28.CastCrewBloc(get<_i31.StarCastRepo>()));
  gh.factory<_i44.CollectionBloc>(
      () => _i44.CollectionBloc(get<_i5.CollectionRepo>()));
  gh.factory<_i45.FavouriteBloc>(
      () => _i45.FavouriteBloc(get<_i7.FavouriteRepo>()));
  gh.factory<_i13.MovieBlocBloc>(
      () => _i13.MovieBlocBloc(get<_i11.MovieRepo>()));
  gh.factory<_i46.MovieDetailBloc>(
      () => _i46.MovieDetailBloc(get<_i9.MovieDetailRepo>()));
  gh.factory<_i42.OnTVBloc>(() => _i42.OnTVBloc(get<_i37.TvRepo>()));
  gh.factory<_i47.PersonCreditBloc>(
      () => _i47.PersonCreditBloc(get<_i14.PersonCreditRepo>()));
  gh.factory<_i47.PersonDetailBloc>(
      () => _i47.PersonDetailBloc(get<_i14.PersonRepo>()));
  gh.factory<_i47.PersonImageBloc>(
      () => _i47.PersonImageBloc(get<_i14.PersonImageRepo>()));
  gh.factory<_i42.PopulartvBloc>(() => _i42.PopulartvBloc(get<_i37.TvRepo>()));
  gh.factory<_i35.PosterImagesBloc>(
      () => _i35.PosterImagesBloc(get<_i16.PosterImagesRepo>()));
  gh.factory<_i48.RelatedMoviesBloc>(
      () => _i48.RelatedMoviesBloc(get<_i18.RelatedMoviesRepo>()));
  gh.factory<_i49.SearchMovieBloc>(
      () => _i49.SearchMovieBloc(get<_i21.SearchMovieRepo>()));
  gh.factory<_i42.TopratedTvBloc>(
      () => _i42.TopratedTvBloc(get<_i37.TvRepo>()));
  gh.factory<_i50.TvDetailBloc>(
      () => _i50.TvDetailBloc(get<_i33.TvDetailRepo>()));
  return get;
}
