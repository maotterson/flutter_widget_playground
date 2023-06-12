import 'package:flutter/material.dart';

class GameTile extends StatefulWidget {
  const GameTile({Key? key, required this.color}) : super(key: key);
  final Color? color;

  @override
  State<GameTile> createState() => _GameTileState();
}

class _GameTileState extends State<GameTile> {
  @override
  Widget build(BuildContext context) {
    return Container(color: widget.color);
  }
}
