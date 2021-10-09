import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:projeto_exemplo2/myTextForm/textFormFiedRex.dart';
import 'package:projeto_exemplo2/terceira_tela/UpperCaseTextFormatter.dart';

class TextForm extends StatelessWidget {

  TextFormFieldRex textFormFieldRex = Get.put(TextFormFieldRex());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Form"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                style: TextStyle(fontSize: 20),
                controller: textFormFieldRex.myForm,
                inputFormatters: [
                  UpperCaseTextFormatter(),
                  FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9]')),
                ],
                decoration: InputDecoration(
                    labelText: "My form",
                    hintText: "Digite"
                ),
            ),
              ),
          ],
        ),
      ),
    );
  }
}

