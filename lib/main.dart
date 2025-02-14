import 'package:flutter/material.dart';
import 'package:json_parshing/routes/routes.dart';
import 'package:json_parshing/screens/Lec-8.1/provider/home_screen_provider.dart';
import 'package:json_parshing/screens/Lec-8.2/provider/user_provider.dart';
import 'package:json_parshing/screens/Lec-8.3/provider/posts_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PhotosProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PostsProvider(),
        ),
      ],
      builder: (context, child) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routes: MyRoutes.myRoutes,
    );
  }
}
