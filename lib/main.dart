import 'package:bookly_app/features/book/data/datasources/api.dart';
import 'package:bookly_app/features/book/data/datasources/menulist.dart';
import 'package:bookly_app/features/book/presentation/pages/animationscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=>Api()),
      ChangeNotifierProvider(create: (context)=>Menulist()),
     
    ],
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Animationscreen(),
    ),);
  }
}
 
