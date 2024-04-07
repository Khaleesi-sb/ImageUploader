import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:splash_login_upload_app/widgets/button.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ImageUpload extends StatefulWidget {
  const ImageUpload({super.key});

  @override
  State<ImageUpload> createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  File? _imageFile;
  bool isViewClicked = false;
  String? fileName;

  Future<void> _getImage(ImageSource source) async {
    setState(() {
      isViewClicked = false;
    });
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
    fileName = pickedFile?.path.split('/').last;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 50,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    "Upload a Image",
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: DottedBorder(
                        color: Colors.black.withOpacity(0.66),
                        dashPattern: const [8, 6],
                        strokeWidth: 1,
                        padding: const EdgeInsets.all(6),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.transparent,
                          child: isViewClicked
                              ? Image.file(_imageFile!, fit: BoxFit.contain)
                              : Center(
                                  child: _imageFile != null
                                      ? Text(
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontFamily: 'Poppins',
                                          ),
                                          'Selected file name: $fileName')
                                      : Image.asset("assets/images/Image.png")),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                          isPrimary: true,
                          buttonText: "Upload",
                          handleOnPress: () async {
                            _getImage(ImageSource.camera);
                          }),
                      Button(
                          isPrimary: false,
                          buttonText: "View",
                          handleOnPress: () {
                            setState(() {
                              isViewClicked = true;
                            });
                          })
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
