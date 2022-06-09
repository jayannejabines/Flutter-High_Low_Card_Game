// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:high_low_card_game/game.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  List<String> c_cards = ['', '', '', '', ''];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 90, 245, 167),
      appBar: AppBar(
        title: const Text(
          'HIGH-LOW CARD GAME',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              showInfoDialog(context);
            },
            icon: const Icon(Icons.info_outline_rounded),
          )
        ],
      ),
      body: Stack(
        children: [
          Align(
            alignment: const AlignmentDirectional(0, -0.75),
            child: SizedBox(
              height: 350,
              width: 350,
              child: Image.asset('assets/buttons/logo.png',
                  fit: BoxFit.scaleDown, alignment: Alignment.center),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0, 0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GameAppPage(c_cards)));
              },
              child: Image.asset('assets/buttons/play.png'),
            ),
          ),
        ],
      ),
    );
  }
}

showInfoDialog(BuildContext context) {
  Widget okButton = ElevatedButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text('OK! Got It.'));

  AlertDialog info = AlertDialog(
    title: const Text(
      'How to Play',
      textAlign: TextAlign.center,
    ),
    content: const Text(
      'A card is shown and you had to guess whether the next car  is >=, or < the currend. If you guesses right, you get points, otherwise the game will end',
      textAlign: TextAlign.center,
    ),
    actions: [okButton],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return info;
      });
}
