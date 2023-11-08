import 'package:flutter/material.dart';

typedef onMenuItemClick = void Function(MenuItem clickedMenue);

class HomeDrawer extends StatelessWidget {
  onMenuItemClick OnMenuItemClick;

  HomeDrawer(this.OnMenuItemClick, {super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      child: Column(
        children: [
          Container(
              color: Theme.of(context).primaryColor,
              alignment: Alignment.center,
              width: double.infinity,
              height: 140,
              child: Text(
                'News App!',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
          InkWell(
            onTap: () {
              OnMenuItemClick(MenuItem.catiegories);
            },
            child: Row(
              children: [
                Icon(Icons.list),
                Text('Categories',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
              ],
            ),
          ),
          SizedBox(height: 8),
          InkWell(
            onTap: () {
              OnMenuItemClick(MenuItem.settings);
            },
            child: Row(
              children: [
                Icon(Icons.list),
                Text('settings',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

enum MenuItem {
  catiegories,
  settings,
}
