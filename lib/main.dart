import 'package:flutter/material.dart';

import 'choice.dart';
import 'choise_page.dart';

void main() {
  runApp(TabbedAppBarDemo());
}


class TabbedAppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tabbed AppBar'),
            bottom: TabBar(
              isScrollable: true,
              tabs: choices.map<Widget>((Choice choice) {
                return Tab(
                  text: choice.title,
                  icon: Icon(choice.icon),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: choices.map((Choice choice) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: ChoicePage(
                  choice: choice,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}