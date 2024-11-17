import 'package:flutter/material.dart';
import 'package:freezed_practise/config/routes/routes.dart';
import 'package:freezed_practise/config/routes/routes_name.dart';
import 'package:freezed_practise/repository/auth/login_http_api_repository.dart';
import 'package:freezed_practise/repository/auth/login_repository.dart';
import 'package:freezed_practise/repository/movies/movies_http_api_repository.dart';
import 'package:freezed_practise/repository/movies/movies_repository.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void main() {
  serviceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clean Architecture',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      initialRoute: RoutesName.splashScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

void serviceLocator() {
  getIt.registerLazySingleton<LoginRepository>(() => LoginHttpApiRepository());
  getIt
      .registerLazySingleton<MoviesRepository>(() => MoviesHttpApiRepository());
}
