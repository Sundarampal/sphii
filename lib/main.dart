import 'dart:convert';
import 'package:sphii/thispage.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'thispage.dart';

void main() async {
  String jsonurl = "https://sundarampal.github.io/myjsonfiles/subjectquizpage.json";

  await Thispage.fetchjson(jsonurl);
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Frontpage")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: Thispage.widgets,
          ),
        ),
      ),
    );
    print('hello');
  }
}
