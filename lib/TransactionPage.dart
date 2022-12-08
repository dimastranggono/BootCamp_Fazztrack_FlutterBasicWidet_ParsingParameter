import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TranscPage extends StatefulWidget {
   final int jumlahUang;
   TranscPage({Key key ,@required this.jumlahUang}) : super(key: key);

  @override
  State<TranscPage> createState() => _TranscPageState();
}

class _TranscPageState extends State<TranscPage> {
  int jumlah = 0;
  bool btnCheck;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Column(
        children: [
          //container atas button judul
          Container(
            margin: EdgeInsets.fromLTRB(21, 74,180, 40),
            child: Row(
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.pop(context,jumlah);
                }, 
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                child: Icon(Icons.arrow_back_ios,size: 28,
                  color: Colors.black,
                )),
                Padding(padding: EdgeInsets.all(5)),
                Text('Transfer',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700
                  ),
                )
              ],
            ),
          ),
          //container details
          Container(
            margin: EdgeInsets.fromLTRB(16, 0, 16, 40),
            padding: EdgeInsets.all(20),
            width: 325,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Image.asset('assets/container1.png',width: 56,),
                Padding(padding: EdgeInsets.fromLTRB(10, 20, 20, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Samuel Sushi',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      Text('+62 813-335-293-273',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Text(' Rp 120.000 available',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Color(0xff7C7895)
            ),
          ),
          //TEXT DETAILS INPUT
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(jumlah.toString(),
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.w700
              ),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(16, 76, 16, 50),
            child: TextField(
              onChanged: (value){
                setState(() {
                  jumlah = int.parse(value);
                });
              },
              // controller: txtfield,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mode_edit_outline,size: 40,)
              ),
            ),
          )
        ],
      ),
    );
  }

  //  Future _buildAlert(BuildContext context) {
  //   return showDialog(
  //   context: context, 
  //   builder: (context)=>AlertDialog(
  //     title: Text('Input money'),
  //     titlePadding: EdgeInsets.all(10),
  //     actions: [
  //       ElevatedButton(onPressed: (){
  //         Navigator.pop(context);
  //       }, child: Text('OK'))
  //     ],
  //   ));
  // }
}