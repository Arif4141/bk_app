import 'package:bk_app/main_screen/daftar_guru/daftar_guru.dart';
import 'package:bk_app/main_screen/daftar_siswa/daftar_siswa.dart';
import 'package:bk_app/main_screen/daftar_staff/daftar_staff.dart';
import 'package:bk_app/main_screen/dashboard/dashboard.dart';
import 'package:bk_app/main_screen/laporan/laporan.dart';
import 'package:bk_app/main_screen/organisasi/organisasi.dart';
import 'package:bk_app/main_screen/struktur/struktur.dart';
import 'package:bk_app/main_screen/dashboard/header.dart';
import 'package:bk_app/utility/constant.dart';
import 'package:flutter/material.dart';

class Pemberitahuan extends StatefulWidget {
  const Pemberitahuan({Key? key}) : super(key: key);

  @override
  _PemberitahuanState createState() => _PemberitahuanState();
}

class _PemberitahuanState extends State<Pemberitahuan> {
  var ScreenIndex = 0;
  final pages = [
    dashboard(),
    Pemberitahuan(),
    Laporan(),
    DaftarSiswa(),
    Daftarguru(),
    DaftarStaff(),
    Struktur(),
    organisasi(),
  ];

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
                child: Text("Pemberitahuan"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
