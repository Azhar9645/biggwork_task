import 'package:biggworks_task/presentation/weather_bloc/weather_bloc.dart';
import 'package:biggworks_task/presentation/widgets/bloc_listner.dart';
import 'package:biggworks_task/presentation/widgets/find_weather_button.dart';
import 'package:biggworks_task/presentation/widgets/search_field.dart';
import 'package:biggworks_task/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {

  HomeScreen({super.key});

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Lottie.asset(
                  'assets/lottie/splash/new.json',
                  fit: BoxFit.cover,
                ),
              ),
              kHeight20,
              SearchField(controller: _searchController),
              kHeight20,
              FindWeatherButton(
                onPressed: () {
                  BlocProvider.of<WeatherBloc>(context)
                      .add(FetchWeatherByCityName(_searchController.text));
                },
              ),
              const WeatherBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
