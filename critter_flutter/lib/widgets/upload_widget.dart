import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'dart:typed_data';

class UploadWidget extends StatelessWidget {
  const UploadWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8),
        child: ElevatedButton(
            child: Text(
              "Upload Script",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).primaryColor)),
            onPressed: () async {
              var picked = await FilePicker.platform.pickFiles();

              if (picked != null) {
                print(picked.files.first.name);
                Uint8List fileContent = picked.files.single.bytes;
                String s = new String.fromCharCodes(fileContent);
                print(s);
              }
            }));
  }

  Future<int> readFile(String fileName) async {
    try {
      final File file = File(fileName);

      final contents = await file.readAsString();

      print(contents);

      return int.parse(contents);
    } catch (e) {
      // If encountering an error, return 0
      print("error");
      return 0;
    }
  }
}
