import 'package:bk_app/main_screen/dashboard/header.dart';
import 'package:bk_app/utility/constant.dart';
import 'package:flutter/material.dart';

class Struktur extends StatelessWidget {
  const Struktur({Key? key}) : super(key: key);
  static const String routeName = '/struktur';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Container(
          child: Column(
            children: [
              Header(),
              SizedBox(height: 10),
              Center(
                child: Text("Struktur"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
