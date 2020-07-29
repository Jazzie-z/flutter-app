import 'package:flutter/foundation.dart';

class WeatherInfo with ChangeNotifier{
  String _tempType = "celcius";
  int _temperatureval = 25;

  int get temperatureVal => _temperatureval;
  String get temperatureType => _tempType;

  set temperature(int newVal){
    _temperatureval = newVal;
    notifyListeners();
  }

  set temperatureType(String newVal){
    _tempType = newVal;
    notifyListeners();
  }

}