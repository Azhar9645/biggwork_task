import 'package:biggworks_task/data/models/weather_model.dart';
import 'package:biggworks_task/presentation/widgets/display_header.dart';
import 'package:biggworks_task/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

class DisplayScreen extends StatefulWidget {
  final Weather weather;

  const DisplayScreen({super.key, required this.weather});

  @override
  _DisplayScreenState createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.parse(widget.weather.datetime);
    String formattedDate = DateFormat('EEEE, MMMM dd, yyyy').format(dateTime);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            kHeight40,
            DisplayHeader(),
            kHeight20,
            Text(
              widget.weather.cityName,
              style: q50W,
            ),
            Text(formattedDate, style: q22W),
            Text('${widget.weather.temperature.round()}°C', style: q150W),
            Lottie.asset(getWeatherAnimation(widget.weather.mainCondition)),
            Text(
              widget.weather.mainCondition,
              style: q40W,
            ),
             kHeight20,
          ],
        ),
      ),
    );
  }

  String getWeatherAnimation(String mainCondition) {
    switch (mainCondition.toLowerCase()) {
      case 'clouds':
      case 'mist':
      case 'smoke':
      case 'haze':
      case 'dust':
      case 'fog':
        return 'assets/lottie/condiotions/windy.json';
      case 'rain':
      case 'drizzle':
      case 'shower rain':
        return 'assets/lottie/condiotions/sun with rain.json';
      case 'thunderstorm':
        return 'assets/lottie/condiotions/thunder.json';
      case 'clear':
        return 'assets/lottie/condiotions/sunny.json';
      default:
        return 'assets/lottie/condiotions/sunny.json';
    }
  }
}
