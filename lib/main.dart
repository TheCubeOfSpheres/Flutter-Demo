import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:demoapp/pages/home.dart';
import 'package:demoapp/pages/loading.dart';



void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home()
    }
  ));
}


