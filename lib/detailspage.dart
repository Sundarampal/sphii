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
// class app extends StatefulWidget {
//   const app({super.key});
//
//   @override
//   State<app> createState() => _appState();
// }
//
// class _appState extends State<app> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold( appBar: AppBar(title: Text('sundram'),),
//     );
//   }
// }
//
