import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'detailspage.dart';

class Detailspage extends StatelessWidget {
final String title;
final String details;
  const Detailspage({super.key,required this.title,required this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(title: Text(title),),
      body: Center(
        child: Text(details,style: TextStyle(fontSize: 18),),
      ),
    );
  }
 }
 class Questionpage {
  static List<Widget>questionwidgets = [];

 }
