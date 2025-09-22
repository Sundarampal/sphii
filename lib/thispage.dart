import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'detailspage.dart';
class Thispage {
  static List<Widget> widgets = [Text("Hi")];

  static Future<void> fetchjson(String jsonurl) async {
    Uri uri = Uri.parse(jsonurl);
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      int n = data.length;
      widgets.clear();
      for (int i = 0; i <= n - 1; i++) {
        var a = data[i];
        print(a);
        widgets.add(
          Builder(
            builder: (context) => ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> app()));
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Detailspage(
                //       title: a["name"].toString(),
                //       details: a.toString(),
                //     ),
                //   ),
                // );
              },
              child: Text(a["name"].toString()),
            ),
          ),
        );
      }
    }
  }
}
