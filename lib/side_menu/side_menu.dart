import 'package:bk_app/utility/constant.dart';
import 'package:bk_app/utility/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
    required this.onTap,
    required this.activeIndex,
  }) : super(key: key);

  final Function(int) onTap;
  final int activeIndex;

  @override
  State<SideMenu> createState() => _SideMenuState();
}

var screenIndex = 0;
bool selected = true;

class _SideMenuState extends State<SideMenu> {
  VoidCallback updateState(int index) {
    return () {
      setState(() {
        widget.onTap(index);
        if (Responsive.isMobile(context)) {
          Navigator.pop(context);
        }
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: ListView(
          children: [
            Container(
              color: secondaryColor,
              height: 180,
              child: DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Nama User",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "User Id/Email",
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
            DrawerListTile(
              index: 0,
              activeIndex: widget.activeIndex,
              title: "Dashboard",
              icon: Icons.dashboard,
              onTap: updateState(0),
            ),
            DrawerListTile(
              index: 1,
              activeIndex: widget.activeIndex,
              title: "Pemberitahuan",
              icon: Icons.notification_add,
              onTap: updateState(1),
            ),
            DrawerListTile(
              index: 2,
              activeIndex: widget.activeIndex,
              title: "Laporan",
              icon: Icons.document_scanner,
              onTap: updateState(2),
            ),
            DrawerListTile(
              index: 3,
              activeIndex: widget.activeIndex,
              title: "Daftar Siswa",
              icon: Icons.list,
              onTap: updateState(3),
            ),
            DrawerListTile(
              index: 4,
              activeIndex: widget.activeIndex,
              title: "Daftar Guru",
              icon: Icons.list,
              onTap: updateState(4),
            ),
            DrawerListTile(
              index: 5,
              activeIndex: widget.activeIndex,
              title: "Daftar Staff",
              icon: Icons.list,
              onTap: updateState(5),
            ),
            DrawerListTile(
              index: 6,
              activeIndex: widget.activeIndex,
              title: "Struktur Sekolah",
              icon: Icons.account_tree,
              onTap: updateState(6),
            ),
            DrawerListTile(
              index: 7,
              activeIndex: widget.activeIndex,
              title: "Organisasi",
              icon: Icons.person,
              onTap: updateState(7),
            ),
            DrawerListTile(
              index: 8,
              activeIndex: widget.activeIndex,
              title: "Keluar",
              icon: Icons.logout,
              onTap: updateState(8),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.index,
    required this.activeIndex,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final int index, activeIndex;
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      hoverColor: Colors.blue[25],
      selected: index == activeIndex,
      selectedTileColor: Colors.blue[100],
      onTap: onTap,
      horizontalTitleGap: 0.0,
      leading: Icon(
        icon,
        color: index == activeIndex ? Colors.blue : Colors.black54,
      ),
      title: Text(
        title,
        style: TextStyle(
            color: index == activeIndex ? Colors.blue : Colors.black54),
      ),
    );
  }
}
