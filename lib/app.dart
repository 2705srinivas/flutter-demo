import 'package:demo/screens/profile_setup/profile_setup.dart';
import 'package:flutter/material.dart';
import 'screens/user_login/user_login.dart';
import 'screens/trainers_list/trainers_list.dart';
import 'screens/trainer_profile/trainer_profile.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routeConfiguration(),
      routes: {
        "/": (context) => UserLogin(),
      },
    );
  }

  RouteFactory _routeConfiguration() {
    return (settings) {
      // Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case '/':
          screen = UserLogin();
          break;
        case '/second':
          screen = ProfileSetup();
          break;
        case '/third':
          screen = TrainersList();
          break;
        case '/fourth':
          screen = TrainerProfile();
          break;
        default:
          screen = UserLogin();
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
