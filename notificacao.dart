import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Notifications{

  String title;
  String message;
  IconData? icon;

  Notifications({
    required this.title,
    required this.message,
    this.icon,
  });

  void build() {
      Get.snackbar(
        title, // título
        message, // mensagem
        icon: Icon(Icons.alarm),
        shouldIconPulse: true,
        barBlur: 20,
        isDismissible: true,
        duration: Duration(seconds: 3),
      );
  }
}

enum Type{
  notification,
  alert,
  error
}

extension Types on Type{
  String get types {
    switch(this){
      case Type.notification : return "Notification";
      case Type.alert : return "Alert";
      case Type.error : return "Error";
    }
  }
}

//Notifications(title: Type.notification.types ,message: 'Ola', icon: Icons.add).build();
