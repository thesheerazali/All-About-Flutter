import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:http/http.dart' as http;

class ImageUploadOnServer extends StatefulWidget {
  const ImageUploadOnServer({super.key});

  @override
  State<ImageUploadOnServer> createState() => _ImageUploadOnServerState();
}

class _ImageUploadOnServerState extends State<ImageUploadOnServer> {
  File? image;

  final imagepicker = ImagePicker();
  bool progressIndecator = false;

  Future getImage() async {
    final filepicked = await imagepicker.pickImage(
        source: ImageSource.gallery, imageQuality: 100);

    if (filepicked != null) {
      image = File(filepicked.path);
      setState(() {});
    } else {
      print("No Image Selected");
    }
  }

  Future<void> uploadImage() async {
    if (image == null) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Select Image First"),
            actions: [
              Center(
                child: ElevatedButton(
                  child: new Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          );
        },
      );
    } else {
      setState(() {
        progressIndecator = true;
      });

      var stream = http.ByteStream(image!.openRead());
      stream.cast();

      var length = await image!.length();

      var uri = Uri.parse("https://fakestoreapi.com/products");

      var req = http.MultipartRequest('POST', uri);

      req.fields['title'] = "Static ttitle";

      var multiport = http.MultipartFile(
        'image',
        stream,
        length,
      );

      req.files.add(multiport);

      var responce = await req.send();

      if (responce.statusCode == 200) {
        setState(() {
          progressIndecator = false;
        });

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Successfull"),
              content: Text("Yayy! Image Uploaded successfully"),
              actions: [
                Center(
                  child: ElevatedButton(
                    child: new Text("OK"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            );
          },
        );

        print("Uploaded Successfull");
      } else {
        setState(() {
          progressIndecator = false;
        });

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Unsuccessfull"),
              content: Text("Oops Image Uploaded Unsuccessfull"),
              actions: [
                Center(
                  child: ElevatedButton(
                    child: new Text("OK"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            );
          },
        );

        print("failed");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upload Image"),
        centerTitle: true,
      ),
      body: ModalProgressHUD(
        inAsyncCall: progressIndecator,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => getImage(),
              child: Container(
                  child: image == null
                      ? const Center(
                          child: Text("Pick Image"),
                        )
                      : Center(
                          child: Image.file(
                            File(image!.path).absolute,
                            height: 200,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        )),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                uploadImage();
              },
              child: Container(
                height: 50,
                width: 100,
                color: Colors.deepPurple,
                child: Center(
                  child: Text("Upload"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
