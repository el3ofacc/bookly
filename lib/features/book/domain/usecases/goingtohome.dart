import 'package:bookly_app/features/book/domain/usecases/navigate.dart';
import 'package:bookly_app/features/book/presentation/pages/homescreen.dart';
import 'package:flutter/material.dart';

class Goingtohome {
  void gotohome(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigate.navigatefun(context, const Homescreen());
    });
  }
}
