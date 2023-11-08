import 'package:flutter/material.dart';
import 'package:untitled8/home/Catiegories/categories.dart';
import 'package:untitled8/home/Catiegories/categoriesData.dart';
import 'package:untitled8/home/HomeDetails/CategoryDetils.dart';
import 'package:untitled8/home/HomeDrawer.dart';
import 'package:untitled8/home/Settings/settings.dart';

class Homescreen extends StatefulWidget {
  static const String RouteName = 'home';

  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    super.initState();
    selectedWidget = categories(categoryclikeitem);
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/backgroundpattern.png'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('News App')),
        ),
        drawer: HomeDrawer(OnMenuItemClick),
        body: selectedWidget,
      ),
    );
  }

  late Widget selectedWidget;

  void OnMenuItemClick(MenuItem item) {
    switch (item) {
      case MenuItem.catiegories:
        {
          selectedWidget = categories(categoryclikeitem);
        }
      case MenuItem.settings:
        selectedWidget = settings();
    }
    setState(() {});
  }

  void categoryclikeitem(CategoryData categoryData) {
    selectedWidget = CategoryDetils(categoryData);
    setState(() {});
  }
}
