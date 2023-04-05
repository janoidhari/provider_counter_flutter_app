import 'package:flutter/material.dart';
import 'package:provider_counter_app/models/counter.dart';

class CounterProvider extends ChangeNotifier{
//int counter=0;
Counter obj=Counter(c: 0);
void incrementCounter(){
  ++obj.c;
  notifyListeners();
}

void decrementCounter(){
  --obj.c;
  notifyListeners();
}
}