import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  Future<List> getData() async {
    Response response =
    await post('https://api.vonzodigital.com/api/test/memes', headers: {
      'vonzo-api-key': 'eLfzWQLQMre',
    });
    print(response.statusCode);
    Map data = json.decode(response.body);
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'dataObj': data['data'],
    });
  }
  @override
  void initState() {
    super.initState();
    getData();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: SpinKitCircle(
          color: Colors.amber,
          size: 50.0
      ) ),
    );
  }
}
