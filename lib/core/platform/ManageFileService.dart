import 'dart:io';
import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';

class ManageFileService{

  Future<void> saveFile({required String fileName,required String urlFolder,required String extension, required Uint8List byteList}) async {
    try{
    final output = await getExternalStorageDirectory();
    var filePath = "${output?.path}$urlFolder";
    final aux = Directory(filePath);
    if (!aux.existsSync()) {
      aux.createSync(recursive: true);
    }
    final file = File("$filePath$fileName.$extension");
    await file.writeAsBytes(byteList);
    print(filePath);
    }
    catch(error){
      throw error;
    }
  }
}