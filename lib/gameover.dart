import 'package:flutter/material.dart';
import 'package:high_low_card_game/game.dart';
import 'package:high_low_card_game/index.dart';

// ignore: non_constant_identifier_names
void GameOver(BuildContext context, int n) {
  List<String> cards = ['', '', '', '', ''];
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          alignment: Alignment.center,
          title: const Text(
            'Game Over',
            textAlign: TextAlign.center,
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Index()));
                    },
                    child: const Icon(Icons.home_max_outlined)),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GameAppPage(cards)));
                    },
                    child: const Icon(Icons.refresh_outlined)),
              ],
            ),
          ],
          content:
              Text('Game Over! You scored: $n', textAlign: TextAlign.center),
        );
      });
}
