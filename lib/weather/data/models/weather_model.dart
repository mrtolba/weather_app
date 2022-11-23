import 'package:weather/weather/domain/entities/weather.dart';

class WeatherModel extends Weather{
  WeatherModel(
      super.id,
      super.cityName,
      super.main,
      super.description,
      super.pressure
      );

  // factory : create obj from this class                       create new obj
   factory WeatherModel.fromJson(Map<String , dynamic> json) => WeatherModel(
     json["id"],
     json["name"],
     json["weather"][0]["main"],
     json["weather"][0]["description"],
     json["main"]["pressure"],
   );




}