import 'package:cinemapranthan/ui/screens/Movies/movies.dart';
import 'package:cinemapranthan/ui/screens/Tvshows/tvshows.dart';
import 'package:cinemapranthan/ui/screens/favourites/favourites.dart';
import 'package:cinemapranthan/ui/screens/settings/settings.dart';
import 'package:flutter/material.dart';
import '../../constants/Icons/appicons.dart';
import '../../constants/colours/colours.dart';
import '../widgets/glasscontainer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
    
      const Movies(),
      const TvShows(),
      const Favourites(),
      const Settings()
    ];
    return Scaffold(
      extendBody: true,
      backgroundColor: transparent,
      body: ValueListenableBuilder(
          valueListenable: BottomNav.currentindex,
          builder: (context, int index, _) {
            return Stack(
              children: [
                screens[index],
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: BottomNav(),
                )
              ],
            );
          }),
    );
  }
}

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  static ValueNotifier<int> currentindex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: currentindex,
        builder: (context, index, _) {
          return Container(
            color: transparent,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: GlassContainer(
                margin: EdgeInsets.zero,
                blurPower: 15.0,
                borderRadius: BorderRadius.circular(20),
                gradientColors: [
                  darkGrey.withOpacity(0.8),
                  darkGrey.withOpacity(0.8),
                ],
                child: NavigationBarTheme(
                  data: NavigationBarThemeData(
                      indicatorShape: const CircleBorder(),
                      labelTextStyle: MaterialStateProperty.all(const TextStyle(
                          color: white, fontSize: 12.0, letterSpacing: 1.0)),
                      iconTheme: MaterialStateProperty.all(
                          const IconThemeData(color: white, size: 24.0)),
                      backgroundColor: transparent,
                      indicatorColor: orange),
                  child: NavigationBar(
                      height: 70,
                      animationDuration: const Duration(milliseconds: 500),
                      backgroundColor: transparent,
                      selectedIndex: currentindex.value,
                      onDestinationSelected: (index) =>
                          currentindex.value = index,
                      destinations: const [
                        NavigationDestination(
                            icon: Icon(AppIcons.movies_and_tv_svgrepo_com),
                            label: "Movies"),
                        NavigationDestination(
                            icon: Icon(
                                AppIcons.tv_hand_drawn_outline_svgrepo_com),
                            label: "Tv Shows"),
                        NavigationDestination(
                            icon: Icon(AppIcons.heart), label: "Favourites"),
                        NavigationDestination(
                            icon: Icon(AppIcons.settings), label: "Settings")
                      ]),
                ),
              ),
            ),
          );
        });
  }
}
