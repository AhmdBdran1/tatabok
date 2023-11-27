import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title:  Text('تطابق صورة',
           style:TextStyle(
             color: Colors.white,
             fontSize: 20.0,

          ),
        ),
        backgroundColor: Colors.indigo[800],

      ),

      body:   ImagePage(),
    ),
  ),
  );
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  var leftImageNumber=6;
  var rightImageNumber=5;

  void changImage(){
    leftImageNumber=Random().nextInt(8)+1;
    rightImageNumber=Random().nextInt(8)+1;

  }


  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
           leftImageNumber==rightImageNumber?
          'مبروك لقد نجحت':
          'حاول مره أخرى',
          style: TextStyle(
            fontSize: 42.0,
            color: Colors.white,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: GestureDetector(
                    onTap:(){
                      setState(() {
                        changImage();
                      });
                    },
                    child: Image.asset('images/image-$leftImageNumber.png')
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: GestureDetector(
                    onTap:(){
                     setState(() {
                       changImage();
                     });
                    },
                    child: Image.asset('images/image-$rightImageNumber.png')
                ),
              ),
            ),

          ],
        ),
      ],
    );
  }
}



