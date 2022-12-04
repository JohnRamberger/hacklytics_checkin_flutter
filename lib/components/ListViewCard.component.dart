import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ListViewCard extends StatelessWidget {
  const ListViewCard({this.labelText = "", required this.children, super.key});

  final String labelText;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Badge(
        badgeContent: Text(labelText),
        shape: BadgeShape.square,
        alignment: Alignment.topRight,
        position: BadgePosition.topEnd(top: 2, end: 2),
        borderRadius: BorderRadius.circular(10),
        child: Card(
            child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: ListView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: children,
          ),
        )));
  }
}
