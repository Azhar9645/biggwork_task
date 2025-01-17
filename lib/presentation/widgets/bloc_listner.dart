import 'package:biggworks_task/presentation/screens/display_screen.dart';
import 'package:biggworks_task/presentation/weather_bloc/weather_bloc.dart';
import 'package:biggworks_task/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class WeatherBlocListener extends StatelessWidget {
  const WeatherBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<WeatherBloc, WeatherState>(
      listener: (context, state) {
        // Log the current state to help with debugging
        print('Current State: $state');

        if (state is WeatherSuccessState) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DisplayScreen(weather: state.weather),
            ),
          );
        } else if (state is WeatherErrorState) {
          // Show Fluttertoast when city is not found
          Fluttertoast.showToast(
            msg: "City not found. Please try again.",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: kRed,
            textColor: kWhite,
            fontSize: 18,
          );
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
