import 'package:flutter/material.dart';

class Choice {
  final String title;
  final IconData icon;

  const Choice({this.title, this.icon});
}

const List<Choice> choices = <Choice>[
  Choice(title: 'CAR', icon: Icons.directions_car),
  Choice(title: 'BICYCLE', icon: Icons.directions_bike),
  Choice(title: 'BUS', icon: Icons.directions_bus),
  Choice(title: 'TRAIN', icon: Icons.directions_railway),
  Choice(title: 'WALK', icon: Icons.directions_walk),
  Choice(title: 'BOAT', icon: Icons.directions_boat),
];
