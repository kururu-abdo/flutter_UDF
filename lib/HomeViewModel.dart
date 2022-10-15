import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:udf_architecture/HomeState.dart';
import 'package:udf_architecture/events.dart';

class HomeViewModel extends ChangeNotifier {
   final ValueNotifier<HomeState> _homeState =ValueNotifier(HomeState());

ValueNotifier<HomeState> get   homeState  => _homeState;



void onEvent(HomeEvents events){
 if (events is ChangeTitleEvents) {
 _homeState.value=   _homeState.value.copyWith(
    title: (events).newTitle
  );
   
 } else if (events is ChangeImageEvent) {
    _homeState.value.copyWith(
    image: (events).newImage
  );
 }
 else if (events is SetBusyEvent) {
  _homeState.value=   _homeState.value.copyWith(
    isLoading: !_homeState.value.isLoading!
  );
 }
 
 else {
   log('none of above');
 }
}

}