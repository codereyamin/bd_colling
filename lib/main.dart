import 'package:bd_colling/android_version_model.dart';
import 'package:bd_colling/my_home_class.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/////////////// global input json staring data is 1
String input1 = '''[{"0":{"id":1,"title":"Gingerbread"},
"1":{"id":2,"title":"Jellybean"},
"3":{"id":3,"title":"KitKat"}},
[{"id":4,"title":"Lollipop"},
{"id":5,"title":"Pie"},
{"id":6,"title":"Oreo"},
{"id":7,"title":"Nougat"}]]''';
/////////////// global input json staring data is 2
String input2 = '''
[{"0":{"id":1,"title":"Gingerbread"},
"1":{"id":2,"title":"Jellybean"},
"3":{"id":3,"title":"KitKat"}},
{"0":{"id":8,"title":"Froyo"},
"2":{"id":9,"title":"Éclair"},
"3":{"id":10,"title":"Donut"}},
[{"id":4,"title":"Lollipop"},
{"id":5,"title":"Pie"},
{"id":6,"title":"Oreo"},
{"id":7,"title":"Nougat"}]]
''';
/////////////// global list of androidVersion data
List<AndroidVersion> androidVersionsData = [];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Json to dart",
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
      home: MyHomeClass(),
    );
  }
}
