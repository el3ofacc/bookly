import 'package:bookly_app/features/book/data/datasources/api.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Formfield extends StatefulWidget {
  const Formfield({super.key});

  @override
  State<Formfield> createState() => _FormfieldState();
}

class _FormfieldState extends State<Formfield> {
  TextEditingController book = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<Api>(
      builder: (context, provider, child) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            textAlign: TextAlign.center,
            controller: book,
            decoration: InputDecoration(
                hintText: 'book',
                filled: true,
                fillColor: Colors.white,
                suffixIcon: InkWell(
                    onTap: () {
                      provider.fetchdata(book: book.text);
                    },
                    child: const Icon(
                      Icons.search,
                      size: 50,
                      color: Colors.blue,
                    )),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
          ),
        );
      },
    );
  }
}
