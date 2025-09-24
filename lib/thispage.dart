import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'detailspage.dart';
class Thispage {

  static List<Widget> quizwidgets = [];

  static List<Widget> widgets = [];
static Future<String> fetchquizzes(String quizurl)
async {
  print(1);
  print(quizurl);
  Uri uri = Uri.parse(quizurl);
  var response = await http.get(uri);
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    print(data);
  }
return "";
}
  static Future<void> fetchjson(String jsonurl) async {
    Uri uri = Uri.parse(jsonurl);
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      int n = data.length;
      widgets.clear();
      for (int i = 0; i <= n - 1; i++) {
        var a = data[i];

        widgets.add(
          Builder(
            builder: (context) =>
                ElevatedButton(
              onPressed: ()async {
                String url=data[i]["url"];
                print(url);
                await fetchquizzes(url);
                print("hii");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detailspage(
                      title: a["quizname"].toString(),
                      details: a.toString(),
                    ),
                  ),
                );
              },
              child: Text(a["quizname"].toString()),
            ),
          ),
        );
      }
    }
  }
}
