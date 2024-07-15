import 'package:bookly_app/features/book/presentation/widgets/animatrow.dart';
import 'package:flutter/material.dart';

class Animationscreen extends StatefulWidget {
  const Animationscreen({super.key});

  @override
  State<Animationscreen> createState() => _AnimationscreenState();
}

class _AnimationscreenState extends State<Animationscreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold( 
      backgroundColor: Colors.black,
      body: Column( mainAxisAlignment: MainAxisAlignment.center,
        children: [ 
          Animatrow()
        ],
      ),
    );
  }
}

 