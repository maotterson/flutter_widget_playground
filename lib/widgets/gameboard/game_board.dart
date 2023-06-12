import 'package:flutter/material.dart';
import 'package:flutter_widget_playground/widgets/gameboard/game_tile.dart';

class GameBoardView extends StatefulWidget {
  const GameBoardView({Key? key}) : super(key: key);

  @override
  State<GameBoardView> createState() => _GameBoardViewState();
}

class _GameBoardViewState extends State<GameBoardView> {
  var pieces = List.generate(8, (_) => List.filled(8, '.'));

  Color getColor(int index) {
    int row = index ~/ 8;
    Color cellColor =
        (index + row) % 2 == 0 ? Colors.greenAccent : Colors.green;
    return cellColor;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 8,
      children: List.generate(64, (index) {
        return Center(
          child: GameTile(
              color: getColor(index), pieceInfo: pieces[index ~/ 8][index % 8]),
        );
      }),
    );
  }
}
