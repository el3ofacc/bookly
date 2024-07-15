import 'package:bookly_app/core/utils/styletext.dart';
import 'package:bookly_app/features/book/domain/entities/initanimation.dart';
import 'package:bookly_app/features/book/domain/usecases/goingtohome.dart';
import 'package:flutter/material.dart';

class Animatrow extends StatefulWidget {
  const Animatrow({super.key});

  @override
  State<Animatrow> createState() => _AnimatrowState();
}

class _AnimatrowState extends State<Animatrow> with TickerProviderStateMixin {
  var element = Initanimation();
  var going = Goingtohome();
  @override
  void initState() {
   
    super.initState();

    element.transtion(this);
    element.animationController.forward();
    going.gotohome(context);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SlideTransition(
          position: element.animationtextb,
          child: Mytext(
            text: 'b',
          ),
        ),
        SlideTransition(
          position: element.animationtexto,
          child: Mytext(
            text: 'o',
          ),
        ),
        SlideTransition(
          position: element.animationtexto2,
          child: Mytext(
            text: 'o',
          ),
        ),
        SlideTransition(
          position: element.animationtextk,
          child: Mytext(
            text: 'k',
          ),
        ),
        SlideTransition(
          position: element.animationtextl,
          child: Mytext(
            text: 'l',
          ),
        ),
        SlideTransition(
          position: element.animationtexty,
          child: Mytext(
            text: 'y',
          ),
        ),
      ],
    );
  }
}
