import 'package:bk_app/main_screen/dashboard/dash_header_data.dart';
import 'package:bk_app/main_screen/dashboard/dash_visual.dart';
import 'package:bk_app/main_screen/dashboard/header.dart';
import 'package:bk_app/main_screen/dashboard/tabel_siswa.dart';
import 'package:bk_app/utility/constant.dart';
import 'package:bk_app/utility/responsive.dart';
import 'package:flutter/material.dart';

class dashboard extends StatelessWidget {
  const dashboard({Key? key}) : super(key: key);
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
              HeaderData(),
              SizedBox(height: defaultPadding),
              if (!Responsive.isMobile(context))
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Expanded(child: DashBoardVisual()),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    // color: secondaryColor,
                    width: 350,
                    height: Responsive.isMobile(context) ? 400 : 500,
                    child: TabelSiswa(),
                  ),
                ]),
              if (Responsive.isMobile(context))
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          DashBoardVisual(),
                          Container(
                            padding: EdgeInsets.all(5),
                            // color: secondaryColor,
                            height: Responsive.isMobile(context) ? 400 : 500,
                            child: TabelSiswa(),
                          ),
                        ],
                      ),
                    ),
                    if (!Responsive.isMobile(context))
                      SizedBox(width: defaultPadding),
                    // On Mobile means if the screen is less than 850 we dont want to show it
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
