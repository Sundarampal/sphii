import 'package:flutter/material.dart';
void main ()async {

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title: Text("Frontpage"),
        ),
        body: Center(
          child: ElevatedButton(onPressed: (){
            print("hello");
          }, child: Text("click")),
        ),
      )

    );
    print('hello');
  }

}
