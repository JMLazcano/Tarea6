import 'package:flutter/foundation.dart';

class Counters with ChangeNotifier{

  int _counter=0;

  int get counter_n => _counter;

  void increment(){
    _counter++;
    notifyListeners();
  }

  void decrement(){
    _counter--;
    notifyListeners();
  }

  void restart(){
    _counter=0;
    notifyListeners();
  }
}