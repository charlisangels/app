import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'contrators_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: '',
          )
        ]),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return ContractorListPage();
              break;
            case 1:
              return Scaffold();
              break;
            case 2:
              return Scaffold();
              break;
            default:
              return Scaffold();
              break;
          }
        });
  }
}
