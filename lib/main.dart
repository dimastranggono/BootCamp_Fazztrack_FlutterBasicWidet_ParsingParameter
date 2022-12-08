import 'package:fazztrack_batch1/MainPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

 //halaman pertama yang diakses diambil dari MyApp
class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Fazztrack Bootcamp Flutter',
            style: TextStyle(
              fontSize: 25
            ),
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [ 
            Image.asset('assets/bgSplash.jpg',
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 500, 10, 15),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Flutter UI',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                      color: Colors.white
                    ),
                  ),
                  Text('Layouting UI is always fun',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.white
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context,
                     (MaterialPageRoute(builder: (context){
                      return MainPage();
                     })));
                  }, 
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    primary: Colors.purpleAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  child: Text('AYO GASS',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
