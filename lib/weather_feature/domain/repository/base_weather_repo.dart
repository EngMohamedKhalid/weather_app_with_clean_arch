import 'package:weather_app_with_clean_arch/weather_feature/domain/entities/weather_entity.dart';

abstract class BaseWeatherRepo {
  Future<WeatherEntity> getWeatherWithCityName({required String cityName});
}