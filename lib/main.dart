import 'package:biggworks_task/data/services/weather_service.dart';
import 'package:biggworks_task/presentation/screens/home_screen.dart';
import 'package:biggworks_task/presentation/weather_bloc/weather_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherBloc(WeatherService()),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1e3c72), // Start color (Dark Blue)
              Color(0xFF2a5298), // Middle color (Medium Blue)
              Color(0xFF4f9fd1), // End color (Light Blue)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'BW ASS2',
          theme: ThemeData(
            useMaterial3: true,
            scaffoldBackgroundColor: Colors.transparent,
          ),
          home: HomeScreen(),
        ),
      ),
    );
  }
}
