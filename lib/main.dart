
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'App/App.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

