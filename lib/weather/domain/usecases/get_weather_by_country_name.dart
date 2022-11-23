import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repository/base_weather_repository.dart';

class GetWeatherByCountryName{
  // just ref , cannot create obj
  final BaseWeatherRepository repository ;

  GetWeatherByCountryName(this.repository);

   Future<Weather> execute(String cityName)async {
     return await repository.getWeatherByCityName(cityName);
  }
}