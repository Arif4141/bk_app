// import 'package:bk_app/main_screen/daftar_guru/daftar_guru.dart';
// import 'package:bk_app/main_screen/daftar_siswa/daftar_siswa.dart';
// import 'package:bk_app/main_screen/daftar_staff/daftar_staff.dart';
// import 'package:bk_app/main_screen/dashboard/dashboard.dart';
// import 'package:bk_app/main_screen/laporan/laporan.dart';
// import 'package:bk_app/main_screen/organisasi/organisasi.dart';
// import 'package:bk_app/main_screen/pemberitahuan/pemberitahuan.dart';
// import 'package:bk_app/main_screen/struktur/struktur.dart';
// import 'package:bk_app/main_screen/dashboard/header.dart';
// import 'package:bk_app/side_menu/side_menu.dart';
// import 'package:bk_app/utility/constant.dart';
// import 'package:bk_app/utility/controller.dart';
// import 'package:bk_app/utility/responsive.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/src/provider.dart';
//
// class Pemberitahuan_Main extends StatefulWidget {
//   @override
//   State<Pemberitahuan_Main> createState() => _Pemberitahuan_MainState();
// }
//
// class _Pemberitahuan_MainState extends State<Pemberitahuan_Main> {
//   var ScreenIndex = 1;
//   final pages = [
//     dashboard(),
//     Pemberitahuan(),
//     Laporan(),
//     DaftarSiswa(),
//     Daftarguru(),
//     DaftarStaff(),
//     Struktur(),
//     organisasi(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: context.read<MenuController>().scaffoldKey,
//       drawer: SideMenu(
//         onTap: (i) {
//           setState(() {
//             ScreenIndex = i;
//           });
//         },
//       ),
//       body: SafeArea(
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // We want this side menu only for large screen
//             if (Responsive.isDesktop(context))
//               Expanded(
//                 // default flex = 1
//                 // and it takes 1/6 part of the screen
//                 child: SideMenu(
//                   onTap: (i) {
//                     setState(() {
//                       ScreenIndex = i;
//                     });
//                   },
//                 ),
//               ),
//             Expanded(
//               // It takes 5/6 part of the screen
//               flex: 5,
//               child: pages[ScreenIndex],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
