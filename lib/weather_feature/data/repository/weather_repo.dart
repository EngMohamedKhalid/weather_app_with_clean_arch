import 'package:weather_app_with_clean_arch/weather_feature/data/data_source/remote/remote_data_source.dart';
import 'package:weather_app_with_clean_arch/weather_feature/domain/entities/weather_entity.dart';
import 'package:weather_app_with_clean_arch/weather_feature/domain/repository/base_weather_repo.dart';

class WeatherRepository implements BaseWeatherRepo{
  final BaseRemoteDataSource remoteDataSource;

  WeatherRepository(this.remoteDataSource);
  @override
  Future<WeatherEntity> getWeatherWithCityName({required String cityName})async {
   return (await remoteDataSource.getWeather(cityName: cityName))!;
  }

}