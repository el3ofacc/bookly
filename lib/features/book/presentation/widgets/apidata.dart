import 'package:bookly_app/core/utils/styletext.dart';
import 'package:bookly_app/features/book/data/datasources/api.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class apidata extends StatefulWidget {
  const apidata({
    super.key,
  });

  @override
  State<apidata> createState() => _apidataState();
}

// ignore: camel_case_types
class _apidataState extends State<apidata> {
  @override
  void initState() {
     
    super.initState();
    Provider.of<Api>(context, listen: false).fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<Api>(
      builder: (context, provider, child) {
        return provider.booklist.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Expanded(
                child: Container(
                  color: Colors.blue,
                  child: ListView.builder(
                      itemCount: provider.booklist.length,
                      itemBuilder: (context, index) {
                        var element = provider.booklist[index];
                        return Card(
                          color: Colors.blue,
                          child: Row(
                            children: [
                              SizedBox(
                                height: size.height / 4,
                                width: size.width / 3,
                                child: element.image == null
                                    ? const Center(
                                        child: CircularProgressIndicator(),
                                      )
                                    : Image(
                                        image: NetworkImage(
                                          element.image.toString(),
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                              ),
                              SizedBox(
                                height: size.height / 4,
                                width: size.width / 2,
                                child: Column(
                                  children: [
                                    Mytext(text: element.title.toString()),
                                    Mytext(text: element.subtitle.toString())
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                ),
              );
      },
    );
  }
}
