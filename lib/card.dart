import 'dart:math';

class CardValue {
  int randomIndex = 0;
  List faces = [
    ['img/2C.png', 2],
    ['img/2D.png', 2],
    ['img/2H.png', 2],
    ['img/2S.png', 2],
    ['img/3C.png', 3],
    ['img/3D.png', 3],
    ['img/3H.png', 3],
    ['img/3S.png', 3],
    ['img/4C.png', 4],
    ['img/4D.png', 4],
    ['img/4H.png', 4],
    ['img/4S.png', 4],
    ['img/5C.png', 5],
    ['img/5D.png', 5],
    ['img/5H.png', 5],
    ['img/5S.png', 5],
    ['img/6C.png', 6],
    ['img/6D.png', 6],
    ['img/6H.png', 6],
    ['img/6S.png', 6],
    ['img/7C.png', 7],
    ['img/7D.png', 7],
    ['img/7H.png', 7],
    ['img/7S.png', 7],
    ['img/8C.png', 8],
    ['img/8D.png', 8],
    ['img/8H.png', 8],
    ['img/8S.png', 8],
    ['img/9C.png', 9],
    ['img/9D.png', 9],
    ['img/9H.png', 9],
    ['img/9S.png', 9],
    ['img/10C.png', 10],
    ['img/10D.png', 10],
    ['img/10H.png', 10],
    ['img/10S.png', 10],
    ['img/AC.png', 1],
    ['img/AD.png', 1],
    ['img/AH.png', 1],
    ['img/AS.png', 1],
    ['img/JC.png', 11],
    ['img/JD.png', 11],
    ['img/JH.png', 11],
    ['img/JS.png', 11],
    ['img/QC.png', 12],
    ['img/QD.png', 12],
    ['img/QH.png', 12],
    ['img/QS.png', 12],
    ['img/KC.png', 13],
    ['img/KD.png', 13],
    ['img/KH.png', 13],
    ['img/KS.png', 13],
  ];

  List getRandom() {
    randomIndex = Random().nextInt(13 * 4);
    return [faces[randomIndex][0], faces[randomIndex][1]];
  }
}
