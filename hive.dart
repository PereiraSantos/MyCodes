import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveConfig.start();
  startPreferences();

}

var box;

class HiveConfig {
  static start() async{
    Directory dir = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(dir.path);
  }
}

Future<void> startPreferences() async{
  box = await Hive.openBox('testBox');
  await setLocale();
  await readLocale();
}

setLocale() async{
  await box.put('teste', 'teste teste');
}

readLocale(){
  final local = box.get('teste');
  print(local);
}

/*
hive_flutter: ^1.1.0
  path_provider: ^2.0.6
  shared_preferences: ^2.0.7
 */