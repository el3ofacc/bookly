import 'package:bookly_app/core/utils/droptext.dart';
import 'package:bookly_app/features/book/data/datasources/api.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Drop extends StatelessWidget {
  const Drop({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Api>(
      builder: (context, provider, child) {
        return DropdownButton(
                  hint:const Droptext(),
                    items: const [
                      DropdownMenuItem(
                        child: Text('science'),
                        value: 'science',
                      ),
                      DropdownMenuItem(
                        child: Text('math'),
                        value: 'math',
                      ),
                      DropdownMenuItem(
                        child: Text('cook'),
                        value: 'cook',
                      ),
                     
                      DropdownMenuItem(
                        child: Text('chemestry'),
                        value: 'chemestry',
                      ),
                     
                      DropdownMenuItem(
                        child: Text('computer sceince'),
                        value: 'computerscience',
                      ),
                    ],
                    onChanged: (value) {
                       
                      provider.changelist(value!);
                      provider.fetchdata(book: provider.value.toString());
                    },
                  );
      },
        
      )  ;
  }
}