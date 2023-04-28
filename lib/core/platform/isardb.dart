import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:path_provider/path_provider.dart';

import '../utils/utils.dart';

abstract class IsarDB{
  void initIsar();
  Isar get isar;
}
class IsarDBImpl extends IsarDB with Utils {
  late Directory dir;
  late Isar _isar;

  IsarDBImpl() {
    initIsar();
  }
  @override
  Isar get isar=>_isar;

  @override
  void initIsar() async {
    dir = await getApplicationSupportDirectory();
    /*_isar = await Isar.open([ActiveSchema, LocalSchema, ReportSchema],
        directory: dir.path);*/
  }
}
