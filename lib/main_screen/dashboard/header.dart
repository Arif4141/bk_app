import 'package:bk_app/utility/constant.dart';
import 'package:bk_app/utility/controller.dart';
import 'package:bk_app/utility/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            if (!Responsive.isDesktop(context))
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: context.read<MenuController>().controlMenu,
              ),
            // if (!Responsive.isDesktop(context))
            //   Expanded(
            //     child: Text(
            //       "APP LOGO/NAME",
            //       style: Theme.of(context).textTheme.headline6,
            //     ),
            //   ),
            // if (Responsive.isDesktop(context))
            //   Expanded(
            //     child: Center(
            //       child: Text(
            //         "APP LOGO/NAME",
            //         style: Theme.of(context).textTheme.headline6,
            //       ),
            //     ),
            //   ),
            Expanded(
              child: Row(
                children: [
                  Text(
                    "APP LOGO/NAME",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  if (Responsive.isMobile(context))
                    Expanded(
                      child: TextField(
                        decoration: new InputDecoration(
                            prefixIcon: new Icon(Icons.search),
                            hintText: 'Search...'),
                      ),
                    ),
                  if (!Responsive.isMobile(context))
                    Container(
                      width: 300,
                      child: TextField(
                        decoration: new InputDecoration(
                            prefixIcon: new Icon(Icons.search),
                            hintText: 'Search...'),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
        Divider(
          thickness: 2,
        ),
      ],
    );
  }
}
