import 'package:weather_app_with_clean_arch/weather_feature/domain/entities/weather_entity.dart';
import 'package:weather_app_with_clean_arch/weather_feature/domain/repository/base_weather_repo.dart';

class GetWeatherByCountryName{
  final BaseWeatherRepo baseWeatherRepo;

  GetWeatherByCountryName(this.baseWeatherRepo);


  Future<WeatherEntity> execute({required String cityName})async{
    return await baseWeatherRepo.getWeatherWithCityName(cityName: cityName);
  }

}