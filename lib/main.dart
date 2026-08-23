import 'package:flutter/material.dart';
import 'grocery_app.dart';
import 'package:flutter/services.dart';

void main () {
  SystemChrome.setSystemUIOverlayStyle(
    
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(GroceryApp());
}