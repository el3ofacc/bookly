import 'package:flutter/material.dart';

class Initanimation {
  late AnimationController animationController;
  late Animation<Offset> animationtextb;
  late Animation<Offset> animationtexto;
  late Animation<Offset> animationtexto2;
  late Animation<Offset> animationtextk;
  late Animation<Offset> animationtextl;
  late Animation<Offset> animationtexty;

  void transtion(TickerProvider tickerprovider) {
    animationController = AnimationController(
        vsync: tickerprovider, duration: const Duration(seconds: 2));
    animationtextb = Tween<Offset>(begin: const Offset(0, 0), end: const Offset(.5, 1))
        .animate(animationController);
    animationtexto = Tween<Offset>(begin: const Offset(0, 15), end: const Offset(.5, 1))
        .animate(animationController);
    
    animationtexto2 = Tween<Offset>(begin: const Offset(1, 0), end: const Offset(.5, 1))
        .animate(animationController);
    animationtextk = Tween<Offset>(begin: const Offset(1, 1), end: const Offset(.5, 1))
        .animate(animationController);
    animationtextl = Tween<Offset>(begin: const Offset(0, 15), end: const Offset(.5, 1))
        .animate(animationController);
    animationtexty = Tween<Offset>(begin: const Offset(1, 0), end: const Offset(.5, 1))
        .animate(animationController);
  }
}

 