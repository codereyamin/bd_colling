import 'package:bd_colling/convert_json_to_dart_android_version_data.dart';
import 'package:bd_colling/main.dart';
import 'package:bd_colling/search_screen.dart';
import 'package:flutter/material.dart';

class MyHomeClass extends StatefulWidget {
  const MyHomeClass({super.key});

  @override
  State<MyHomeClass> createState() => _MyHomeClassState();
}

class _MyHomeClassState extends State<MyHomeClass> {
  @override
  Widget build(BuildContext context) {
    // androidVersionsData.addAll(convertJsonToAndroidVersions(input1));
    androidVersionsData.addAll(convertJsonToAndroidVersions(input2));
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: TabBarView(children: [
            //////////////// data view
            Wrap(children: [
              ...List.generate(
                  androidVersionsData.length,
                  (index) => Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "${androidVersionsData[index].title}",
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ))
            ]),
            const SearchScreen()
          ]),
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.all(25),
          padding: const EdgeInsets.all(10),
          child: const TabBar(tabs: [
            Tab(
              child: Text(
                "All Data Show",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                "Search Data",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
