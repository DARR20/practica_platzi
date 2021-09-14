import 'package:flutter/material.dart';
import 'package:platzi_holamundo/platzi_trips.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: "Lato",
          primarySwatch: Colors.blue,
        ),
        home: PlatziTrips()
        //body: new DescriptionPlace("Bahamas", 4, descripcion)

        //Stack(
        //children: [
        //  Container(
        //             decoration: BoxDecoration(
        //                 image: DecorationImage(
        //                     image: NetworkImage(
        //                       'https://play-lh.googleusercontent.com/nhCcFdHCcDNkgVzEPYOzePhsof7GTg8rCvE6dAPPXDHFoxBM7euz-gnTOwe4uXIkFU-a=w800-h500',
        //                     ),
        //                     fit: BoxFit.fill)),
        //           ),
        //  Expanded(
        //      child: Padding(
        //    padding: EdgeInsets.only(top: 300),
        //    child: Container(
        //      height: 50,
//                alignment: Alignment.center,
//                decoration: BoxDecoration(
//                  color: Colors.black45,
//                ),
//                child: Text(
        //                 'Texto de prueba',
        //                 style: TextStyle(
        //                   fontSize: 30,
        //                   color: Colors.white,
        //                 ),
        //               ),
//              ),
//            )),
//          ],
//        ),
//        floatingActionButton: FloatingActionButton(
//          onPressed: () {
        //           Navigator.push(context,
        //               MaterialPageRoute(builder: (context) => DescriptionPlace()));
//          },
//          child: Icon(Icons.add),
//        ),

        //MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}
