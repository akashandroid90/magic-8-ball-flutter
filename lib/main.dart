import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text("Ask Me Anything"),backgroundColor: Colors.blue.shade900,),
      body: Ball(),
    );
  }
}
class Ball extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _BallState();
  }
}

class _BallState extends State<Ball>{
  var ballImage=1;
  @override
  Widget build(BuildContext context) {
    return Center(child:
    FlatButton(child: Image.asset("images/ball$ballImage.png"),onPressed: (){
      setState(() {
        ballImage = Random().nextInt(5)+1;
      });
    },)
    );
  }
}