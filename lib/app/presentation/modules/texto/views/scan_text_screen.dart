import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_editor_plus/image_editor_plus.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/colores.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/custom_app_bar.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/drawer_widget.dart';
import 'package:my_flutter_module/app/presentation/modules/texto/views/EnhanceScreen.dart';
import 'package:my_flutter_module/app/presentation/modules/texto/views/RecognizerScreen.dart';
import 'package:my_flutter_module/app/presentation/modules/texto/widgets/CardScanner.dart';
import 'package:my_flutter_module/app/presentation/routes/route_path.dart';

class ScanTextScreen extends StatelessWidget {
  final ImagePicker imagePicker = ImagePicker();

  ScanTextScreen({super.key});

  bool scan = false;
  bool recognize = true;
  bool enhance = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: RoutePath.textScann,
      ),
      drawer: const AppDrawer(),
      body: Container(
        color: colorBackground,
        padding: const EdgeInsets.only(top: 50, bottom: 15, left: 5, right: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              color: colorChido,
              child: SizedBox(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.scanner,
                            size: 25,
                            color: scan ? Colors.black : colorBackground,
                          ),
                          Text(
                            'Scanner',
                            style: TextStyle(
                              color: scan ? Colors.black : colorBackground,
                            ),
                          )
                        ],
                      ),
                      onTap: () async {
                        await _pickAndProcessImage(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
            // Puedes agregar más contenido aquí según necesites
          ],
        ),
      ),
    );
  }

  Future<void> _pickAndProcessImage(BuildContext context) async {
    try {
      XFile? xfile = await imagePicker.pickImage(source: ImageSource.gallery);
      if (xfile != null) {
        File image = File(xfile.path);
        await processImage(context, image);
      }
    } catch (e) {
      print("Error picking image: $e");
    }
  }

  Future<void> processImage(BuildContext context, File image) async {
    final editedImage = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ImageCropper(
          image: image.readAsBytesSync(),
        ),
      ),
    );
    image.writeAsBytes(editedImage);

    if (recognize) {
      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
        return RecognizerScreen(image);
      }));
    } else if (scan) {
      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
        return CardScanner(image);
      }));
    } else if (enhance) {
      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
        return EnhanceScreen(image);
      }));
    }
  }
}
