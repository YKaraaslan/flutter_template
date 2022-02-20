import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/constant/routes.dart';

void main() {
  runApp(
    MultiProvider(providers: const [ //remove 'const' when you need to add a Provider 
        /*ChangeNotifierProvider(create: (context) => ViewModel()),*/
    ],
      child: const MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData.light(),
      routes: Routes.getRoutes(context),
      initialRoute: Routes.homeView
    );
  }
}