import 'package:cinemapranthan/backend/depinjection/injectable.dart';
import 'package:cinemapranthan/bloc/Images/poster_images_bloc.dart';
import 'package:cinemapranthan/bloc/castcrew/cast_crew_bloc.dart';
import 'package:cinemapranthan/bloc/moviebloc/movie_bloc_bloc.dart';
import 'package:cinemapranthan/bloc/moviedetail/movie_detail_bloc.dart';
import 'package:cinemapranthan/bloc/searchmovie/search_movie_bloc.dart';
import 'package:cinemapranthan/bloc/searchtv/searchtv_bloc.dart';
import 'package:cinemapranthan/bloc/tvbloc/tvbloc_bloc.dart';
import 'package:cinemapranthan/ui/screens/homescreen.dart';
import 'package:cinemapranthan/ui/widgets/scrollindicator.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'constants/colours/colours.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:cinemapranthan/bloc/auth/auth_bloc.dart';
import 'package:cinemapranthan/bloc/favourites/favourite_bloc.dart';
import 'package:cinemapranthan/bloc/relatedmovies/related_movies_bloc.dart';
import 'package:cinemapranthan/bloc/tvdetail/tv_detail_bloc.dart';
import 'package:cinemapranthan/bloc/tvseasondetail/tv_season_detail_bloc.dart';
import 'package:cinemapranthan/ui/screens/auth/auth.dart';
import 'package:cinemapranthan/ui/screens/errors/no_network.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'bloc/persondetail/person_detail_bloc.dart';
import 'bloc/tvrelated/tv_related_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'utils/httpcert.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureinjection();

  await Firebase.initializeApp();
  final deviceInfo = await DeviceInfoPlugin().deviceInfo;
  HttpOverrides.global = MyHttpOverrides();
  final androidSdkVersion =
      deviceInfo is AndroidDeviceInfo ? deviceInfo.version.sdkInt! : 0;
  /* ErrorWidget.builder = (FlutterErrorDetails details) {
    bool inDebug = false;
    assert(() {
      inDebug = true;
      return true;
    }());
    // In debug mode, use the normal error widget which shows
    // the error message:
    if (inDebug) {
      return ErrorWidget(details.exception);
    }
    // In release builds, show a yellow-on-blue message instead:
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Error! ${details.exception}',
        style: TextStyle(color: Colors.yellow),
        textDirection: TextDirection.ltr,
      ),
    );
  }; */
  runApp(MyApp(
    androidSdkVersion: androidSdkVersion,
  ));
}

class MyApp extends StatelessWidget {
  final int androidSdkVersion;

  const MyApp({Key? key, required this.androidSdkVersion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<MovieBlocBloc>()),
        BlocProvider(create: (context) => getIt<MovieBlocBloc>()),
        BlocProvider(create: ((context) => getIt<PopularMovieBloc>())),
        BlocProvider(create: (context) => getIt<NowplayingMovieBloc>()),
        BlocProvider(create: ((context) => getIt<UpcomingMovieBloc>())),
        BlocProvider(create: ((context) => getIt<TopRatedmovieBloc>())),
        BlocProvider(create: (context) => getIt<TvblocBloc>()),
        BlocProvider(create: (context) => getIt<PopulartvBloc>()),
        BlocProvider(create: (context) => getIt<AiringTodayBloc>()),
        BlocProvider(create: (context) => getIt<OnTVBloc>()),
        BlocProvider(create: (context) => getIt<TopratedTvBloc>()),
        BlocProvider(create: (context) => getIt<SearchMovieBloc>()),
        BlocProvider(create: (context) => getIt<SearchtvBloc>()),
        BlocProvider(create: (context) => getIt<MovieDetailBloc>()),
        BlocProvider(create: (context) => getIt<CastCrewBloc>()),
        BlocProvider(create: ((context) => getIt<TvDetailBloc>())),
        BlocProvider(create: (context) => getIt<TvShowCreditBloc>()),
        BlocProvider(create: ((context) => getIt<TvSeasonDetailBloc>())),
        BlocProvider(create: ((context) => getIt<SeasonCreditsBloc>())),
        BlocProvider(create: ((context) => getIt<PersonDetailBloc>())),
        BlocProvider(create: ((context) => getIt<PersonCreditBloc>())),
        BlocProvider(create: (context) => getIt<PersonImageBloc>()),
        BlocProvider(create: (context) => getIt<AuthBloc>()),
        BlocProvider(create: (context) => getIt<FavouriteBloc>()),
        BlocProvider(create: ((context) => getIt<RelatedMoviesBloc>())),
        BlocProvider(create: (context) => getIt<TvRelatedBloc>()),
        BlocProvider(create: (context) => getIt<PosterImagesBloc>()),
        BlocProvider(create: ((context) => getIt<TvPosterImageBloc>())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScrollConfiguration(
          behavior: CustomScrollBehavior(
            androidSdkVersion: androidSdkVersion,
          ),
          child: StreamBuilder(
              stream: Connectivity().onConnectivityChanged,
              builder: (context, snapshot) {
                if (snapshot.data == ConnectivityResult.none) {
                  return const ConnectivityErrorScreen();
                } else {
                  return StreamBuilder(
                      stream: FirebaseAuth.instance.authStateChanges(),
                      builder: ((context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                              child: CircularProgressIndicator(
                            color: orange,
                          ));
                        } else if (snapshot.hasData) {
                          return const Home();
                        } else if (snapshot.hasError) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else {
                          return const AuthScreen();
                        }
                      }));
                }
              }),
        ),
        themeMode: ThemeMode.dark,
        color: darkColour,
      ),
    );
  }
}
