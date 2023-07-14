import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:weather_app_with_clean_arch/core/utils/constants.dart';
import 'package:weather_app_with_clean_arch/weather_feature/data/models/weather_model.dart';

abstract class BaseRemoteDataSource{
 Future<WeatherModel?> getWeather({required String cityName});
}

class RemoteDataSource implements BaseRemoteDataSource{
  @override
  Future<WeatherModel?> getWeather({required String cityName}) async{
    try {
      var response = await Dio().get('${AppConstants.baseUrl}/weather?q=$cityName&appid=${AppConstants.apiKey}');
      print(response.data);
      Map<String,dynamic> data = response.data;
      return WeatherModel.fromJson(data);
    }  catch (e) {
      print(e.toString());
      return null;
    }

  }

}