import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
class AppRoutes{

  static const inicialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(route: 'home',      name: 'Home Screen',     screen: const HomeScreen(),      icon: Icons.home_max_sharp),
    MenuOption(route: 'listview1', name: 'ListView type 1', screen: const ListView1Screen(), icon: Icons.list_alt),
    MenuOption(route: 'listview2', name: 'ListView type 2', screen: const ListView2Screen(), icon: Icons.list_alt),
    MenuOption(route: 'alert',     name: 'Alert',           screen: const AlertScreen(),     icon: Icons.add_alarm_outlined),
    MenuOption(route: 'card',      name: 'Card',            screen: const CardScreen(),      icon: Icons.credit_card),
    MenuOption(route: 'avatar',    name: 'Avatar',          screen: const AvatarScreen(),    icon: Icons.supervised_user_circle),
    MenuOption(route: 'animated',  name: 'Animated',        screen: const AnimatedScreen(),  icon: Icons.play_circle_outline),
    MenuOption(route: 'inputs',    name: 'Text',            screen: const InputsScreen(),    icon: Icons.input_rounded),
    MenuOption(route: 'slider',    name: 'slider and check-s', screen: const SliderScreen(),    icon: Icons.slow_motion_video_rounded),
    MenuOption(route: 'listviewbuilder',    name: 'InfiniteScrol & Pull to refresh', screen: const ListViewBulderScreen(), icon: Icons.build_circle_rounded),
  ];
  

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'home'      : (BuildContext context) => const HomeScreen(),
  //       'listview1' : (BuildContext context) => const ListView1Screen(),
  //       'listview2' : (BuildContext context) => const ListView2Screen(),
  //       'alert'     : (BuildContext context) => const AlertScreen(),
  //       'card'      : (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(builder: 
          (context) => const AlertScreen()
        );
  }
}