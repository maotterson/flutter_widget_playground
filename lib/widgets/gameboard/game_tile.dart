import 'package:flutter/material.dart';

class GameTile extends StatefulWidget {
  const GameTile({Key? key, required this.color, required this.pieceInfo})
      : super(key: key);
  final Color color;
  final String pieceInfo;

  @override
  State<GameTile> createState() => _GameTileState();
}

class _GameTileState extends State<GameTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      color: widget.color,
      child:
          Center(child: Text(widget.pieceInfo != '.' ? widget.pieceInfo : '')),
    );
  }
}
