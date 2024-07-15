import 'package:bookly_app/features/book/data/datasources/api.dart';
import 'package:bookly_app/features/book/presentation/widgets/apidata.dart';
import 'package:bookly_app/features/book/presentation/widgets/catagory.dart';
import 'package:bookly_app/features/book/presentation/widgets/drop.dart';
import 'package:bookly_app/features/book/presentation/widgets/formfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Api>(
      builder: (context, provider, child) {
        return Scaffold(
            backgroundColor: Colors.blue,
            appBar: AppBar(
              backgroundColor: Colors.blue,
               
              actions: const [
                Drop()
              ],
            ),
            body: const Column(
              children: [
                Formfield(),
                catagory(),
                SizedBox(
                  height: 10,
                ),
                apidata()
              ],
            ));
      },
    );
  }
}
