import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
  Mytext({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(maxLines: 2,overflow:TextOverflow.ellipsis,
        text,
        style: TextStyle(fontSize: size.height/30, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}

 