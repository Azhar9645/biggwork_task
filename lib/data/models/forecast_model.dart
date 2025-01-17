class Forecast {
  final String datetime;
  final double temperature;
  final String mainCondition;

  Forecast({
    required this.datetime,
    required this.temperature,
    required this.mainCondition,
  });

  factory Forecast.fromJson(Map<String, dynamic> json) {
    return Forecast(
      datetime: json['dt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000).toIso8601String()
          : '',
      temperature: (json['main']['temp'] as num).toDouble(),
      mainCondition: json['weather'][0]['main'] ?? '',
    );
  }
}
