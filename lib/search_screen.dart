import 'package:bd_colling/android_version_model.dart';
import 'package:bd_colling/main.dart';
import 'package:bd_colling/search_item_android_data_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController inputTextEditingController = TextEditingController();
  AndroidVersion? outPutData;
/////////////// find data function create
  findData() {
    setState(() {
      /////////////// call search item Function
      var searchData = searchItemAndroidDataList(
          allItemList: androidVersionsData,
          id: int.parse(inputTextEditingController.text));
      /////////// check item is null
      if (searchData != null) {
        /////////// item is not null to set data
        outPutData = searchData;
      } else {
        //////////// item is null to set null search result
        outPutData = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      /////////////// input field
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller:
              inputTextEditingController, /////////// text controller assign
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly
          ], /////////// only number input
          ////////////// input field decoration
          decoration: InputDecoration(
            filled: true,
            hintText: "Search item dy ID", /////////// input field hint text
            fillColor: Colors.grey,

            /////////////// border decoration
            border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    const BorderSide(color: Colors.blueAccent, width: 2)),
            enabled: true,
            enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    const BorderSide(color: Colors.blueAccent, width: 2)),
            focusedBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    const BorderSide(color: Colors.blueAccent, width: 2)),
          ),
        ),
      ),

      //////////////// search button
      ElevatedButton.icon(
          onPressed: () {
            if (inputTextEditingController.text != "") {
              findData();
            }
          },
          icon: const Icon(Icons.search),
          label: const Text("Search")),
      const SizedBox(
        height: 50,
      ),

      /////////////// search item show
      if (outPutData != null)
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "${outPutData?.title}",
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        )
    ]);
  }
}
