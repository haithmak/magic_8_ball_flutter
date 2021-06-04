import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(BallPage());
}

class BallPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask Me Anything',
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[900],
        ),
        body: BallPages(),
      ),
    );
  }
}

class BallPages extends StatefulWidget {
  const BallPages({Key? key}) : super(key: key);

  @override
  _BallPagesState createState() => _BallPagesState();
}

class _BallPagesState extends State<BallPages> {
  int  ballNumber =0;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: FlatButton(
        child: Image.asset('images/ball$ballNumber.png'),
        onPressed: () {
          ballNumber = Random().nextInt(4)+1 ;
          setState(() {
            print('I got it $ballNumber ') ;
          });


        },
      )),
    );
  }
}
