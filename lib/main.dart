import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'pages/home_page.dart';
import 'pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Homepage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.LTheme(context),
      darkTheme: MyTheme.DTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeroutes,
      routes: {
        "/": (context) => login(),
        MyRoutes.homeroutes: (context) => Homepage(),
        MyRoutes.loginroutes: (context) => login(),
      },
    );
  }
}
