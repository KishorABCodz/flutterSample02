import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final List<String> menuTitles = [
      'home',
      'BMI caculator',
      'whether',
      'training'
    ];
    List<Widget> menuItems = [];
    menuItems.add(DrawerHeader(
      decoration: BoxDecoration(color: Colors.black),
      child: Text(
        'global fitness',
        style: TextStyle(color: Colors.white, fontSize: 28),
      ),
    ));
    menuTitles.forEach((String element) {
      menuItems.add(ListTile(
        title: Text(element, style: TextStyle(fontSize: 28)),
      ));
    });
    return menuItems;
  }
}
