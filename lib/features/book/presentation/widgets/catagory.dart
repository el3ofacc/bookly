import 'package:bookly_app/features/book/data/datasources/api.dart';
import 'package:bookly_app/features/book/data/models/booksname.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class catagory extends StatefulWidget {
  const catagory({
    super.key,
  });

  @override
  State<catagory> createState() => _catagoryState();
}

// ignore: camel_case_types
class _catagoryState extends State<catagory> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<Api>(
      builder: (context, provider, child) {
        return Container(
          height: size.height / 5,
          width: double.infinity,
          color: Colors.blue,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Booksname.listbook.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    provider.fetchdata(
                        book: Booksname.listbook[index].bookname.toString());
                  },
                  child: Card(
                      color: Colors.blue,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage(
                              Booksname.listbook[index].image.toString()),
                          height: size.height / 5.3,
                          width: size.width / 3,
                          fit: BoxFit.cover,
                        ),
                      )),
                );
              }),
        );
      },
    );
  }
}



// import 'package:bookly_app/features/book/data/models/booksname.dart';
// import 'package:flutter/material.dart';

// class catagory extends StatefulWidget {
//   catagory({super.key});

//   @override
//   State<catagory> createState() => _catagoryState();
// }

// class _catagoryState extends State<catagory> {
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Container(
//       height: size.height / 5,
//       width: double.infinity,
//       color: Colors.blue,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: Booksname.listbook.length,
//         itemBuilder: (context, index) {
//           return Card(
//             color: Colors.blue,
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(20),
//               child: Image.asset(
//                 Booksname.listbook[index].image.toString(),
//                 fit: BoxFit.cover,
//                 height: size.height / 5.3,
//                 width: size.width / 3,
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
