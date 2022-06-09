// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:high_low_card_game/gameover.dart';
import 'card.dart';

// ignore: must_be_immutable
class GameAppPage extends StatefulWidget {
  List randomCard = CardValue().getRandom();
  List<String> guessed_cards;
  int score = 0;
  GameAppPage(this.guessed_cards, {super.key});

  @override
  State<GameAppPage> createState() => _GameAppPageState();
}

class _GameAppPageState extends State<GameAppPage> {
  void test(var c, var newcard) {
    if (c) {
      setState(() {
        widget.score += 1;
        widget.guessed_cards.insert(0, widget.randomCard[0]);
        widget.randomCard[0] = newcard[0];
        widget.randomCard[1] = newcard[1];
      });
    } else {
      setState(() {
        GameOver(context, widget.score);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0, -0.85),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.all(0.025),
                    height: 150,
                    width: 100,
                    child: widget.guessed_cards[0] == ''
                        ? Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.greenAccent,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black, spreadRadius: 2)
                                ]),
                          )
                        : Image.asset(widget.guessed_cards[0]),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0.025),
                    height: 150,
                    width: 100,
                    child: widget.guessed_cards[1] == ''
                        ? Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.greenAccent,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black, spreadRadius: 2)
                                ]),
                          )
                        : Image.asset(widget.guessed_cards[1]),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0.025),
                    height: 150,
                    width: 100,
                    child: widget.guessed_cards[2] == ''
                        ? Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.greenAccent,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black, spreadRadius: 2)
                                ]),
                          )
                        : Image.asset(widget.guessed_cards[2]),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0.025),
                    height: 150,
                    width: 100,
                    child: widget.guessed_cards[3] == ''
                        ? Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.greenAccent,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black, spreadRadius: 2)
                                ]),
                          )
                        : Image.asset(widget.guessed_cards[3]),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0.025),
                    height: 150,
                    width: 100,
                    child: widget.guessed_cards[4] == ''
                        ? Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.greenAccent,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black, spreadRadius: 2)
                                ]),
                          )
                        : Image.asset(widget.guessed_cards[4]),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.85, 0.75),
              child: SizedBox(
                height: 75,
                width: 150,
                child: Text(
                  'Score: ${widget.score}',
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, -0.15),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    height: 200,
                    child: Image.asset(widget.randomCard[0]),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0.35),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      List test_card = CardValue().getRandom();
                      test(test_card[1] < widget.randomCard[1], test_card);
                    },
                    child: Image.asset('assets/buttons/low.png', scale: 2),
                  ),
                  const SizedBox(width: 50),
                  GestureDetector(
                    onTap: () {
                      List test_card = CardValue().getRandom();
                      test(test_card[1] >= widget.randomCard[1], test_card);
                    },
                    child: Image.asset('assets/buttons/high.png', scale: 2),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: 150,
                height: 200,
                child: Image.asset('assets/buttons/back.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
