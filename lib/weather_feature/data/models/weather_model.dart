import 'package:weather_app_with_clean_arch/weather_feature/domain/entities/weather_entity.dart';

class WeatherModel extends WeatherEntity{
  WeatherModel({
    required super.id,
    required super.pressure,
    required super.cityName,
    required super.main,
    required super.description,
  });

  factory WeatherModel.fromJson(Map<String,dynamic> json){
    return WeatherModel(
        id: json["id"],
        pressure: json["main"]["pressure"],
        cityName: json["name"],
        main: json["weather"][0]["main"],
        description: json["weather"][0]["description"],
    );
  }

}