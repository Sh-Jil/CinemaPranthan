import 'package:cinemapranthan/backend/depinjection/injectable.dart';
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

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureinjection();
  final deviceInfo = await DeviceInfoPlugin().deviceInfo;
  final androidSdkVersion =
      deviceInfo is AndroidDeviceInfo ? deviceInfo.version.sdkInt! : 0;
  runApp(MyApp(androidSdkVersion: androidSdkVersion));
}

class MyApp extends StatelessWidget {
  final int androidSdkVersion;
  const MyApp({Key? key, required this.androidSdkVersion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<MovieBlocBloc>(),
        ),
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
        BlocProvider(create: (context) => getIt<CastCrewBloc>())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScrollConfiguration(
          behavior: CustomScrollBehavior(
            androidSdkVersion: androidSdkVersion,
          ),
          child: const Home(),
        ),
        themeMode: ThemeMode.dark,
        color: darkColour,
      ),
    );
  }
}
