import 'package:flutter/material.dart';

class Navigate{ 
  static   navigatefun(BuildContext context,var page){ 
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>page));
  }
}