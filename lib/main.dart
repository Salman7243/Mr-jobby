import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/Code.dart';
import 'package:flutter_application_1/Pages/Confirmation.dart';
import 'package:flutter_application_1/Pages/Login.dart';
import 'package:flutter_application_1/Pages/SettingTiles.dart';
import 'package:flutter_application_1/Pages/Splash.dart';
import 'package:flutter_application_1/Pages/Tabs.dart';
import 'package:flutter_application_1/Provider/Home_provider.dart';
import 'package:flutter_application_1/Provider/Slider_provider.dart';
import 'package:flutter_application_1/Utilities/Routes.dart';
import 'package:flutter_application_1/Pages/Signin.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => SliderProvider()),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        darkTheme: ThemeData(brightness: Brightness.dark),
        // home: const Login(),
        routes: {
          "/": (context) => SplashScreen(),
          MyRoutes.loginRoute: ((context) => const Login()),
          MyRoutes.SigninRoute: ((context) => RegisterScreen()),
          MyRoutes.ConfirmationRoute: ((context) => const Confirmation()),
          MyRoutes.CodeRoute: ((context) => const Code()),
          MyRoutes.splashRoute: ((context) => SplashScreen()),
          MyRoutes.TabsRoute: ((context) => const Tabs()),
          MyRoutes.SettingTiles: ((context) => SettingTiles()),
        },
      ),
    );
  }
}
